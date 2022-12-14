// 员工菜单
import { Navigate } from 'react-router-dom';
import { MenuOutlined, AppstoreOutlined,RightSquareOutlined } from '@ant-design/icons';
import EmployeIndexView from '../../views/EmployeAllView/EmployeIndexView';
import EmployeHomeView from '../../views/EmployeHomeView'
import LoginView from '../../views/LoginView';
import EmployeClockView from '../../views/EmployeAllView/EmployeClockView'
const eroutes: any = [
    // 重定向
    {
        path: '/homeView',
        show: false,
        auth: true,
        element: (
            <>
                <Navigate to="/homeView/employeIndexView" />
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
                path: 'employeIndexView',
                absolutePath: '/homeView/employeIndexView',
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
        ]
    },
    {
        path: '/',
        element: <Navigate to="/homeView/employeIndexView" />,
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
    '/homeView/employeIndexView': '我的主要信息',
};

export default eroutes;