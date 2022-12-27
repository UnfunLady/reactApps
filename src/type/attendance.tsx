import { message } from "antd"
import { attendanceApi, employe } from "../api"
import { Select } from 'antd'
import * as echarts from 'echarts'
const { Option } = Select
interface employeLeave {
    employeLeaveData: [],
    editLeaveNumber: number,
    checkInfo: {
        deptid: number,
        dno: number,
        employename: string | number,
        employeno: number,
        leaveLong: string | number,
        leaveNumber: number,
        leaveWhen: string | number,
        reply: string,
        verfiyState: string | number,
        whichVerfiy: string | number,
        whyLeave: string | number,
    },
    count: number,
    page: number,
    size: number,

}

export class employeLeaveInit {
    employeLeave: employeLeave = {
        employeLeaveData: [],
        editLeaveNumber: 0,
        checkInfo: {
            deptid: 0,
            dno: 0,
            employename: "",
            employeno: 0,
            leaveLong: "",
            leaveNumber: 0,
            leaveWhen: "",
            reply: "",
            verfiyState: "",
            whichVerfiy: "",
            whyLeave: "",
        },
        count: 0,
        page: 1,
        size: 8,
    }
}

export const getEmployeLeaveData = async (data: employeLeaveInit, setData: Function) => {
    const res: any = await attendanceApi.reqGetEmployeLeavePage({ page: data.employeLeave.page, size: data.employeLeave.size });
    if (res.code === 200) {
        data.employeLeave.employeLeaveData = res.employeLeaveData;
        data.employeLeave.count = res.count;
        setData({ ...data })
    }
}

export const updateEmployeLeave = async (data: object) => {
    const res: any = await attendanceApi.reqUpdateEmployeLeave(data);
    if (res.code === 200) {
        return true;
    } else {
        return false;
    }
}


// 员工主页相关
// 员工信息:
interface employeIndex {
    // 卡片数量
    cardList: Array<any>,
    employeInfo: Array<any>,
    showDept: boolean,
    showDeptDetail: boolean,
    showDeptInfo: {
        [propName: string]: any
    },
    showLeave: boolean,
    showInfo: boolean,
    leaveInfo: [],
    leaveCount: number
}
export class employeIndexInit {

    employeIndex: employeIndex = {
        cardList: [
            {
                id: 1,
                title: '所在部门数量',
                count: undefined,
                color: "#60b2dd",
                showInfo: true,
                src: require("../assets/imges/groupW.png"),
                type: 'dept'
            },
            {
                id: 2,
                title: '个人档案信息',
                count: undefined,
                color: "#66d4ca",
                showInfo: true,
                src: require("../assets/imges/employeInfo.png"),
                type: 'info'
            },
            {
                id: 3,
                title: '我的请假申请',
                count: 0,
                color: "#d35939",
                showInfo: true,
                src: require("../assets/imges/leave.png"),
                type: 'leave'

            }
        ],
        employeInfo: [],
        showDept: false,
        showDeptDetail: false,
        showLeave: false,
        showInfo: false,
        showDeptInfo: {},
        leaveInfo: [],
        leaveCount: 0
    }
}
export const getEmployeInfo = async (data: employeIndexInit, setData: Function, postData: object) => {
    const res: any = await attendanceApi.reqGetEmployeInfo(postData);
    if (res.code === 200) {
        data.employeIndex.employeInfo = res.employeInfo;
        data.employeIndex.cardList[0].count = res.employeInfo.length;
        setData({ ...data })
    } else {
        message.error("获取信息失败")
    }
}

// 获取请假申请
export const getLeave = async (data: employeIndexInit, setData: Function, postData: object) => {
    const res: any = await attendanceApi.getEmployeLeaveInfo(postData)
    if (res.code === 200) {
        data.employeIndex.leaveInfo = res.employeLeaveListInfo;
        data.employeIndex.leaveCount = res.count;
        data.employeIndex.cardList[2].count = res.count
        setData({ ...data })
    }
    else {
        return false;
    }
}

// 员工申请请假
interface employeLeaveRequest {
    employeLeaveForm: {
        whyLeave: string,
        leaveLong: string,
        leaveWhen: string,
        employeno: number,
        employename: string | undefined,
        deptid: number,
        dno: number
    },
    depallSelect: [],
    deptSelect: [],
    // 选择的部门号
    selectDno: number,
    selectDeptId: number,
    // 员工基本信息
    employeBaseData: {
        employename: string | undefined,
        employeno: number | string | undefined,
    },
    active: number,
    addSuccess: boolean
}

export class employeLeaveRequestInit {
    data: employeLeaveRequest = {
        employeLeaveForm: {
            whyLeave: "事假",
            leaveLong: "1天",
            leaveWhen: "0",
            employeno: 0,
            employename: "",
            deptid: 0,
            dno: 0
        },
        depallSelect: [],
        deptSelect: [],
        selectDno: 0,
        selectDeptId: 0,
        employeBaseData: {
            employename: undefined,
            employeno: 0,

        },
        active: 0,
        addSuccess: false
    }
}
// 部门信息类型
type deptOrGroupInfo = {
    dno: string | number,
    dname: string,
    id: string | number,
    deptno: string | number,
    deptname: string | number,
    [propName: string]: any
}
// 获取全部部门的方法
export const getAllDept = async (data: employeLeaveRequestInit, setData: Function, postData: object) => {
    const res: any = await attendanceApi.reqAllDeptE(postData)
    if (res.code === 200) {

        data.data.depallSelect = res.deptInfo.map((dept: deptOrGroupInfo) => {
            return <Option key={dept.dno}>{dept.dname}</Option>
        })
        setData({ ...data })
    } else {
        message.error('请求出错请稍后重试')
    }
}
// 选择部门后获取小组
export const getGroup = async (data: employeLeaveRequestInit, setData: Function, employeno: string | number) => {
    const res: any = await attendanceApi.reqGetGroup({ dno: data.data.selectDno, employeno })
    if (res.code === 200) {
        data.data.deptSelect = res.groupInfo.map((group: deptOrGroupInfo) => {
            return <Option key={group.id}>{group.deptname}</Option>
        })
        setData({ ...data })
    }
    else {
        message.error('请求出错请稍后重试')
    }
}
// 获取员工信息
// 选择部门后获取小组
export const getName = async (data: employeLeaveRequestInit, setData: Function, postData: object) => {
    const res: any = await attendanceApi.reqGetEmployName(postData)
    if (res.code === 200) {
        data.data.employeBaseData.employename = res.employeInfo[0].employname;
        data.data.employeBaseData.employeno = res.employeInfo[0].employno;
        setData({ ...data })
        console.log(data);
    }
    else {
        message.error('请求出错请稍后重试')
    }
}

//添加请假申请
export const addLeave = async (postData: object) => {
    const res: any = await attendanceApi.reqAddLeave(postData)
    if (res.code === 200) {
        return true;
    }
    else {
        return false;
    }
}
// 修改密码
export const updateEuserPassword = async (postData: object) => {
    const res: any = await attendanceApi.reqUpdateEduserPassword(postData)
    if (res.code === 200) {
        return true;
    }
    else {
        return false;
    }
}

// 判断员工是否打上午卡了
export const GetClockInfo = async (postData: object) => {
    const res: any = await attendanceApi.isClockM(postData);
    if (res.code === 200) {
        return res;
    } else {
        message.error("获取打卡信息失败")
    }
}

export const getWhichDeptClock = async (postData: object) => {
    const res: any = await attendanceApi.reqAllDeptE(postData);
    if (res.code === 200) {
        return res.deptInfo;
    } else {
        return undefined;
    }
}
// 保存打卡信息
export const saveClockInfo = async (postData: object, ClockInfo: Function) => {
    const res: any = await attendanceApi.saveClockInfo(postData);
    if (res.code === 200) {
        message.success("打卡成功!")
        ClockInfo()

    } else {
        message.error("打卡失败!")

    }
}
interface todayClockData {
    // 今日早上打卡部门信息
    todayMorningInfo: [],
    // 今日下午打卡部门信息
    todayAfterInfo: [],
    // 今日全部打卡信息
    allClockInfo: [],
    // 今日总打卡数
    allClockCount: number,
    // 全部部门数
    allDeptCount: number,
    // 早上打卡部门数
    deptMorningCount: number,
    // 下午打卡部门数
    deptAfterCount: number,
    // 今日迟到打卡人数
    delayCount: number,
    // 迟到比率
    delayPercentage: string,
    // 基本信息
    baseInfo: {
        deptCount: number,
        depallCount: number,
        employeCount: number,
        monthClockCount: number,
        monthClockDelayCount: number,
        monthClockPercentage: number
    },
    delayClockInfo: [],
    todayDelayCount: number,
    leaveInfo: [],
    leaveCount: number,
    normalInfo: [],
    normalCount: number,
    clockPage: number,
    clockSize: number,
}
export class todayInfoInit {
    data: todayClockData = {
        todayMorningInfo: [],
        todayAfterInfo: [],
        allClockInfo: [],
        allClockCount: 0,
        allDeptCount: 0,
        deptMorningCount: 0,
        deptAfterCount: 0,
        delayCount: 0,
        delayPercentage: '0%',
        baseInfo: {
            deptCount: 0,
            depallCount: 0,
            employeCount: 0,
            monthClockCount: 0,
            monthClockDelayCount: 0,
            monthClockPercentage: 0
        },
        delayClockInfo: [],
        todayDelayCount: 0,
        leaveInfo: [],
        leaveCount: 0,
        normalInfo: [],
        normalCount: 0,
        clockPage: 1,
        clockSize: 6,
    }
}
// 获取今日打卡信息
export const getClockInfoToday = async (data: todayInfoInit, setData: Function, postData: object) => {
    const res: any = await attendanceApi.reqGetClockInfo(postData);
    if (res.code === 200) {
        data.data.todayMorningInfo = res.todayMorningInfo;
        data.data.allClockCount = res.AllClockCount;
        data.data.deptMorningCount = res.DeptMorningCount;
        data.data.deptAfterCount = res.DeptAfterCount;
        data.data.allDeptCount = res.AllDeptCount;
        data.data.allClockInfo = res.todayAllInfo;
        data.data.todayAfterInfo = res.todayAfterInfo;
        data.data.delayCount = res.delayCount;
        data.data.delayPercentage = res.delayPercentage;
        setData({ ...data })
    }
}
// 获取基本信息
export const getBaseInfoClock = async (data: todayInfoInit, setData: Function) => {
    const res: any = await attendanceApi.reqGetBaseInfo();
    if (res.code === 200) {
        data.data.baseInfo = {
            deptCount: res.deptCount,
            depallCount: res.depallCount,
            employeCount: res.employeCount,
            monthClockCount: res.monthClockCount,
            monthClockDelayCount: res.monthClockDelayCount,
            monthClockPercentage: res.monthClockPercentage
        }
        setData({ ...data })
    }
}
export const initChartsOne = async (container: HTMLElement) => {
    const res: any = await attendanceApi.reqGetBaseChartsInfo();
    if (res.code === 200) {
        const option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                },
            },

            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true,
            },
            xAxis: [
                {
                    type: 'category',
                    data: res.titleList,
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis: [
                {
                    type: 'value',

                }
            ],
            series: [
                {
                    name: '数量',
                    type: 'bar',
                    barWidth: '40%',
                    data: res.dataList,
                    itemStyle: {
                        //这里是重点
                        color: function (params: any) {
                            //注意，如果颜色太少的话，后面颜色不会自动循环，最好多定义几个颜色
                            var colorList = ['#4c7daf', '#4c7daf', '#144170', '#285b90', '#285b90', '#0d7cab', '#ca8622'];
                            return colorList[params.dataIndex]
                        }

                    }
                }
            ]
        };
        //初始化echarts实例
        var myChart = echarts.init(container);
        myChart.setOption(option);
        window.onresize = function () {
            myChart.resize();
        };
    } else {
        message.error("获取图表数据失败")
    }


}
// 获取今日打卡迟到信息
export const todayClockDelayInfo = async (data: todayInfoInit, setData: Function, postData: object) => {
    const res: any = await attendanceApi.reqGetTodayClockDelayInfo(postData);
    if (res.code === 200) {
        data.data.delayClockInfo = res.todayDelayClockInfo;
        data.data.todayDelayCount = res.delaycount;
        setData({ ...data })
    }
}
// 获取今日请假信息
export const todayLeaveInfo = async (data: todayInfoInit, setData: Function, postData: object) => {
    const res: any = await attendanceApi.reqGetTodayLeaveInfo(postData);
    if (res.code === 200) {
        data.data.leaveInfo = res.todayLeaveInfo;
        data.data.leaveCount = res.leaveCount;
        setData({ ...data })
    }
}
// 获取今日正常信息
export const todayNormalInfo = async (data: todayInfoInit, setData: Function, postData: object) => {
    const res: any = await attendanceApi.reqGetTodayNormalInfo(postData);
    if (res.code === 200) {
        data.data.normalInfo = res.todayNormalClockInfo;
        data.data.normalCount = res.normalCount;
        setData({ ...data })
    }
}

// 显示部门信息

interface showDeptType {
    showMorningDeptInfo: boolean,
    showAfterDeptInfo: boolean,
    deptData: [],
    employeData: [],
    dno: number,
    page: number,
    size: number,
    todayEmployeCount: number
}
export class showDeptInit {
    data: showDeptType = {
        showMorningDeptInfo: false,
        showAfterDeptInfo: false,
        deptData: [],
        employeData: [],
        dno: 0,
        page: 1,
        size: 6,
        todayEmployeCount: 0
    }
}

export const getTodayEmployeClockInfo = async (data: showDeptInit, setData: Function, getData: object, setShowEmploye: Function) => {
    const res: any = await attendanceApi.reqGetTodayEmployeClockInfo(getData);
    if (res.code === 200) {
        data.data.employeData = res.todayClockEmployeInfo;
        setData({ ...data })
        setShowEmploye(true)
    }
}


// 账号封禁相关
interface lockEuserType {
    eusersData: {
        eusersInfo: [],
        count: number,
        page: number,
        size: number,
    },
    selectForm: {
        username: string | number,
        type: string,
        keyword: string,
    },
    editForm: {
        username: string | number,
        type: string,
        password: string | number
    }
    iskeyWord: boolean

}
export class lockEuserDataInit {
    data: lockEuserType = {
        eusersData: {
            eusersInfo: [],
            count: 0,
            page: 1,
            size: 6
        },
        selectForm: {
            username: '',
            type: '',
            keyword: ''
        },
        iskeyWord: false,
        editForm: {
            username: "",
            type: "",
            password: ""
        }
    }
}
// 关键字获取
export const getEusersInfoBykeyWord = async (data: lockEuserDataInit, setData: Function, postData: object) => {
    const res: any = await attendanceApi.reqGetEusersInfoBykeyWord(postData);
    if (res.code === 200) {
        data.data.eusersData.eusersInfo = res.eusersList;
        data.data.eusersData.count = res.count;
        setData({ ...data })
    }
}
// 获取所有用户分页
export const getEusersInfo = async (data: lockEuserDataInit, setData: Function, postData: object) => {
    if (data.data.iskeyWord) {
        getEusersInfoBykeyWord(data, setData, postData)
    } else {
        const res: any = await attendanceApi.reqGetEusersInfo(postData);
        if (res.code === 200) {
            data.data.eusersData.eusersInfo = res.eusersList;
            data.data.eusersData.count = res.count;
            setData({ ...data })
        }
    }

}
//重置账号
export const resetEuser = async (postData: Object) => {
    const res: any = await attendanceApi.reqResetEuser(postData)
    if (res.code === 200) {
        message.success("重置成功！")
        return true;
    } else {
        message.error("重置失败！")
        return false;
    }

}
// 修改账号
export const updateEuser = async (postData: object) => {
    const res: any = await attendanceApi.reqUpdateEuser(postData);
    if (res.code === 200) {
        return true;
    } else {
        return false;
    }
}
