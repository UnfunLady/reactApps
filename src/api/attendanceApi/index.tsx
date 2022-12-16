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
// 获取员工所在部门
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
export default {
    reqGetEmployeLeavePage,
    reqUpdateEmployeLeave,
    reqGetEmployeInfo,
    reqAllDeptE,
    reqGetGroup,
    reqGetEmployName,
    reqAddLeave,
    getEmployeLeaveInfo
}