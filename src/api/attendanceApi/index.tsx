import request from "../../http";
// 获取信息
const reqGetEmployeLeavePage = (params: object) => {
    return request({ url: '/api/getEmployeLeaveByPage', params })
}
const reqUpdateEmployeLeave = (data: object) => {
    return request({ url: '/api/verfiyLeave', data, method: "post" })
}

export default {
    reqGetEmployeLeavePage,
    reqUpdateEmployeLeave
}