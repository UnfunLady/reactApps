import { message } from "antd"
import { attendanceApi, employe } from "../api"
import { Select } from 'antd'
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
        showLeave: false,
        showInfo: false,
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
