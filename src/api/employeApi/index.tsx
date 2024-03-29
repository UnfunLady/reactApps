import request from "../../http";

// 部门有关
interface deptData {
    deptno?: number | string | undefined,
    deptId?: number | string | undefined,
    page?: number | string,
    size?: number | string
}
interface searchEmployeData {
    keyword: string | number,
    page: string | number,
    size: string | number
}
// 获取全部部门 
const reqAllDept = () => {
    return request({ url: '/api/deptInfo', method: 'get' })
}


// 根据部门号获取团队
const reqGetDeptByDno = (params: {dno:number|String}) => {
    return request({ url: '/api/getDeptByDno', method: 'get', params })
}
// 根据团队获取员工
const reqGetGroupEmploye = (params: deptData) => {
    return request({ url: '/api/getEmployee', method: 'get', params })
}
// 关键字查找
const reqSearchEmploye = (params: searchEmployeData) => {
    return request({ url: '/api/searchEmploy', method: 'get', params })
}
// 获取省市（高德地图API）
// const reqGetAllProvinceAndAllCity = () => {
//     return new Promise(resolve => {
//         axios({
//             url: 'https://restapi.amap.com/v3/config/district', method: 'get', params: {
//                 // 这个是高德地图API申请的 Key，
//                 key: '42552fba291f8a50278dddbe2d7460a2',
//                 keywords: '中国',
//                 subdistrict: 3,
//                 extensions: 'base'
//             }
//         }).then((res) => {
//             resolve(res)
//         })
//     })
// }

//
const reqGetAllProvinceAndAllCity = () => {
    return request({ url: '/api/getProvinceCity', method: 'get' })
}
// 确认添加员工
// 添加或修改员工
const reqAddOrUpdateEmploye = (data: object) => {
    return request({ url: '/api/addOrUpdateEmploy', method: 'post', data })
}
// 删除员工
const reqDeleteEmploye = (data: object) => {
    return request({ url: '/api/deleteEmploy', method: 'post', data })
}
// 获取部门工资明细
interface SalaryInfo {
    dno: string | number
}
// 获取部门工资明细
const reqGetSalaryInfo = (params: SalaryInfo) => {
    return request({ url: '/api/getSalaryInfo', method: 'get', params })
}
// 修改部门工资明细的细节
const reqUpdateSalaryInfo = (data: any) => {
    return request({ url: '/api/updateSalaryInfo', method: 'post', data })
}
// 获取部门员工详细工资细节
const reqGetSalaryDetailInfo = (params: object) => {
    return request({ url: '/api/getSaralyDetailInfo', method: 'get', params })
}
// 更新员工工资明细
const reqUpdateSalaryDetail = (data: object) => {
    return request({ url: '/api/updateSalaryDetail', method: 'post', data })
}


const employe = {
    reqAllDept,
    reqGetDeptByDno,
    reqGetGroupEmploye,
    reqGetAllProvinceAndAllCity,
    reqAddOrUpdateEmploye,
    reqDeleteEmploye,
    reqSearchEmploye,
    reqGetSalaryInfo,
    reqUpdateSalaryInfo,
    reqGetSalaryDetailInfo,
    reqUpdateSalaryDetail,

}

export default employe