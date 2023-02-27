import { USEROUT, SETTOKEN, SETUSERINFO } from "../constant";
interface userInfo {
    isLogin: boolean,
    userToken: string | number,
    userInfo: []
}
class userInit {
    userList: userInfo = {
        isLogin: false,
        userToken: '',
        userInfo: []
    }
}
// export const constant = {
//     SETTOKEN: 'setTokenInfo',
//     SETUSERINFO: 'setUserInfo',
//     USEROUT: 'userOut'
// }

// const actions = {
//     setTokenInfo(state: userInit, data: any) {
//         state.userList.userInfo = data.token
//         state.userList.isLogin = true
//         return { ...state }
//     },
//     setUserInfo(state: userInit, data: any) {
//         state.userList.userInfo = data.Info
//         return { ...state }
//     },
//     userOut(state: userInit, data: any) {
//         state = new userInit()
//         return { ...state }
//     },

// }

export default function userLoginControl(preState = new userInit(), action: any) {
    const { type, data } = action
    // 动态渲染switch case
    // for (let key in constant) {
    //     if (type === constant[key]) {
    //         actions[constant[key]](preState, data)
    //     }
    // }
    switch (type) {
        case SETTOKEN:
            // 登录
            preState.userList.userToken = data.token
            preState.userList.isLogin = true
            // localStorage.setItem('userInfo', JSON.stringify(preState))
            return { ...preState }
        case SETUSERINFO:
            preState.userList.userInfo = data.Info
            // localStorage.setItem('userInfo', JSON.stringify(preState))
            return { ...preState }
        case USEROUT:
            // 退出登录 重置信息
            preState = new userInit()
            return { ...preState }
        default:
            return preState
    }



}