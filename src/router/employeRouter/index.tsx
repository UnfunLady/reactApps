// 员工菜单
import { Navigate } from 'react-router-dom';
import { MenuOutlined, AppstoreOutlined, RightSquareOutlined, InfoCircleOutlined } from '@ant-design/icons';
import EmployeIndexView from '../../views/EmployeAllView/EmployeIndexView';
import EmployeHomeView from '../../views/EmployeHomeView'
import LoginView from '../../views/LoginView';
import EmployeClockView from '../../views/EmployeAllView/EmployeClockView'
import EmployeLeaveView from '../../views/EmployeAllView/EmployeLeaveView';
const eroutes: any = [
    // 重定向
    {
        path: '/homeView',
        show: false,
        auth: true,
        element: (
            <>
                <Navigate to="/homeView/mainView" />
            </>
        ),

    },
    // 员工菜单
    {
        path: '/homeView',
        element: (
            <>
                <EmployeHomeView />
            </>
        ),
        title: '首页',
        breadcrumbName: '首页',
        icon: <MenuOutlined />,
        isEmploye: true,
        show: true,
        auth: true,
        children: [
            {
                path: 'mainView',
                absolutePath: '/homeView/mainView',
                element: <EmployeIndexView />,
                title: '首页信息',
                breadcrumbName: '首页信息',
                icon: <AppstoreOutlined />,
                show: true,
                auth: true,
            },
            {
                path: 'employeClockView',
                absolutePath: '/homeView/employeClockView',
                element: <EmployeClockView />,
                title: '上班打卡',
                breadcrumbName: '上班打卡',
                icon: <RightSquareOutlined />,
                show: true,
                auth: true,
            },

            {
                path: 'employeLeaveView',
                absolutePath: '/homeView/employeLeaveView',
                element: <EmployeLeaveView />,
                title: '请假申请',
                breadcrumbName: '请假申请',
                icon: <InfoCircleOutlined />,
                show: true,
                auth: true,
            },
        ]
    },
    {
        path: '/',
        element: <Navigate to="/homeView/mainView" />,
        show: false,
        auth: true,
    },
    {
        path: '/loginView',
        element: <LoginView />,
        auth: false,
        show: false
    },
]

export const breadcrumbNameMapEmploye: Record<string, string> = {
    // ------------------员工菜单
    '/homeView': '首页',
    '/homeView/mainView': '我的主要信息',
    '/homeView/employeClockView': '上班打卡',
    '/homeView/employeLeaveView': '请假申请'
};

export default eroutes;