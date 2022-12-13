import { message } from "antd"
import { attendanceApi } from "../api"
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
    size: number
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
        size: 8
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