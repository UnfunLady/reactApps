import { attendanceApi } from "../api"

interface employeNoticeType {
    employeNoticeData: {
        allNotice: [],
        specialNotice: [],
        todayNotice: [],
        allNoticeCount: number,
        specialNoticeCount: number,
        todayNoticeCount: number,
    }
    pageData: {
        page: number,
        size: number
    }
    cardList: Array<any>,
    showType: string,
    noticeDetail: {
        [propName: string]: any
    }
}

export class employeNoticeInit {
    data: employeNoticeType = {
        employeNoticeData: {
            allNotice: [],
            specialNotice: [],
            todayNotice: [],
            allNoticeCount: 0,
            specialNoticeCount: 0,
            todayNoticeCount: 0,
        },
        pageData: {
            page: 1,
            size: 6
        },
        cardList: [
            {
                id: 1,
                title: '全体公告',
                count: 0,
                color: "#476080",
                showInfo: true,
                src: require("../assets/imges/allNotice.png"),
                type: 'showAllNotice'
            },
            {
                id: 2,
                title: '私密公告',
                count: 0,
                color: "#12aab5",
                showInfo: true,
                src: require("../assets/imges/specialNotice.png"),
                type: 'showSpecialNotice'
            },
            {
                id: 3,
                title: '今日公告',
                count: 0,
                color: "#d35939",
                showInfo: true,
                src: require("../assets/imges/todayNotice.png"),
                type: 'showTodayNotice'
            }
        ],
        showType: "default",
        noticeDetail: {}
    }
}

// 获取公告数据
export const getNoticeInfo = async (data: employeNoticeInit, setData: Function, getData: object) => {
    const res: any = await attendanceApi.reqGetNoticeEmploye(getData);
    if (res.code === 200) {
        data.data.employeNoticeData.allNotice = res.allNotice;
        data.data.employeNoticeData.allNoticeCount = res.allNoticeCount;
        data.data.employeNoticeData.specialNotice = res.specialNotice;
        data.data.employeNoticeData.specialNoticeCount = res.specialNoticeCount;
        data.data.employeNoticeData.todayNotice = res.todayNoticeInfo;
        data.data.employeNoticeData.todayNoticeCount = res.todayNoticeInfoCount;
        data.data.cardList[0].count = res.allNoticeCount;
        data.data.cardList[1].count = res.specialNoticeCount;
        data.data.cardList[2].count = res.todayNoticeInfoCount;
        setData({ ...data })
    }

}   