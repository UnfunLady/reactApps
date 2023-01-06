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
// 修改账号
const reqUpdateEuser = (data: Object) => {
    return request({ url: '/api/updateEuser', method: 'post', data })
}
// 修改员工账号密码
const reqUpdateEduserPassword = (data: Object) => {
    return request({ url: '/api/updateEuserPassword', method: 'post', data })
}

// 获取今日打卡迟到信息
const reqGetTodayClockDelayInfo = (params: Object) => {
    return request({ url: '/api/getTodayClockDelayInfo', method: 'get', params })
}
// 获取今日请假信息
const reqGetTodayLeaveInfo = (params: Object) => {
    return request({ url: '/api/getTodayLeaveInfo', method: 'get', params })
}
// 今日正常信息
const reqGetTodayNormalInfo = (params: Object) => {
    return request({ url: '/api/getTodayClockNormalInfo', method: 'get', params })
}
// 获取部门打卡信息树结构
const reqGetDepallTreeInfo = () => {
    return request({ url: '/api/getTreeInfo', method: 'get' })
}
// 根据部门号或小组号获取打卡信息

const reqGetClockTreeInfo = (data: object) => {
    return request({ url: '/api/getClockInfoTree', method: 'post', data })
}
// 修改打卡信息
const reqUpdateClockInfo = (data: object) => {
    return request({ url: '/api/editClockInfo', method: 'post', data })
}

// 获取全部公告
const reqGetAllNoticeInfo = (params: object) => {
    return request({ url: '/api/getAllNoticeInfo', method: 'get', params })
}
// 删除多余图片
const reqDeleteImageList = (data: object) => {
    return request({ url: '/api/deleteNoticeImage', method: 'post', data })
}
// 获取全部小组信息

const reqGetAllDeptInfo = () => {
    return request({ url: '/api/getAllDeptInfo', method: 'get' })
}

// 添加公告
const reqAddNotice = (data: object) => {
    return request({ url: '/api/addNotice', method: 'post', data })
}
// 删除公告
const reqDelNotice = (data: object) => {
    return request({ url: '/api/deleteNotice', method: 'post', data })
}
// 关键字查找公告

const reqGetNoticeByKeyWord = (params: object) => {
    return request({ url: '/api/getNoticeByKeyWord', method: 'get', params })
}
// 员工获取公告

const reqGetNoticeEmploye = (params: object) => {
    return request({ url: '/api/getNoticeEmploye', method: 'get', params })
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
    reqResetEuser,
    reqUpdateEuser,
    reqUpdateEduserPassword,
    reqGetTodayClockDelayInfo,
    reqGetTodayLeaveInfo,
    reqGetTodayNormalInfo,
    reqGetDepallTreeInfo,
    reqGetClockTreeInfo,
    reqUpdateClockInfo,
    reqDeleteImageList,
    reqGetAllDeptInfo,
    reqAddNotice,
    reqGetAllNoticeInfo,
    reqDelNotice,
    reqGetNoticeByKeyWord,
    reqGetNoticeEmploye
}