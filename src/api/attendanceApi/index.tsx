import request from "../../http";
// 获取信息
const reqGetEmployeLeavePage = (params: object) => {
    return request({ url: '/api/getEmployeLeaveByPage', params })
}
const reqUpdateEmployeLeave = (data: object) => {
    return request({ url: '/api/verfiyLeave', data, method: "post" })
}
// 获取员工信息
const reqGetEmployeInfo = (data: object) => {
    return request({ url: '/api/getEmployeInfo', data, method: "post" })
}
// 获取员工所在部门信息及小组号
const reqAllDeptE = (data: object) => {
    return request({ url: '/api/deptInfoE', method: 'post', data })
}
// 获取小组
const reqGetGroup = (data: object) => {
    return request({ url: '/api/getGroupE', method: 'post', data })
}
// 获取员工名
const reqGetEmployName = (data: object) => {
    return request({ url: '/api/reqGetEmployName', method: 'post', data })
}
// 添加请假申请
const reqAddLeave = (data: object) => {
    return request({ url: '/api/reqAddLeave', method: 'post', data })
}
// 根据员工号获取id
const getEmployeLeaveInfo = (data: object) => {
    return request({ url: '/api/getEmployeLeaveInfo', method: 'post', data })
}
// 判断是否上午打卡了
const isClockM = (data: object) => {
    return request({ url: '/api/clockMorning', method: 'post', data })
}
const saveClockInfo = (data: object) => {
    return request({ url: '/api/saveclock', method: 'post', data })
}
// 获取今日打卡信息
const reqGetClockInfo = (postData: object) => {
    return request({ url: '/api/getClockInfo', method: 'get', params: postData })
}
// 获取基本信息
const reqGetBaseInfo = () => {
    return request({ url: '/api/getBaseInfo', method: 'get' })
}
// 获取echarts数据
const reqGetBaseChartsInfo = () => {
    return request({ url: '/api/getBaseChartsInfo', method: 'get' })
}
// 获取今日打卡的员工信息
const reqGetTodayEmployeClockInfo = (params: object) => {
    return request({ url: '/api/getTodayClockEmployeInfo', method: 'get', params })
}
// 获取用户账号
const reqGetEusersInfo = (data: object) => {
    return request({ url: '/api/getEuses', method: 'post', data })
}
// 关键字获取账号
const reqGetEusersInfoBykeyWord = (data: Object) => {
    return request({ url: '/api/keyWordSearch', method: 'post', data })
}
// 重置账号
const reqResetEuser = (data: Object) => {
    return request({ url: '/api/resetEuser', method: 'post', data })
}

export default {
    reqGetEmployeLeavePage,
    reqUpdateEmployeLeave,
    reqGetEmployeInfo,
    reqAllDeptE,
    reqGetGroup,
    reqGetEmployName,
    reqAddLeave,
    getEmployeLeaveInfo,
    isClockM,
    saveClockInfo,
    reqGetClockInfo,
    reqGetBaseInfo,
    reqGetBaseChartsInfo,
    reqGetTodayEmployeClockInfo,
    reqGetEusersInfo,
    reqGetEusersInfoBykeyWord,
    reqResetEuser
}