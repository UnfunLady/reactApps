import { lazy } from "react"
const HomeView = lazy(() => import("../views/HomeView"))
const MainView = lazy(() => import("../views/MainView"))
const EmployeView = lazy(() => import("../views/EmployeView"))
const EmployeInfo = lazy(() => import("../views/EmployeView/EmployeInfo"))
const EmployeSalary = lazy(() => import("../views/EmployeView/EmployeSalary"))
const SalaryIndexView = lazy(() => import("../views/EmployeView/EmployeSalary/IndexView"))
const DepartmentSalaryDetail = lazy(() => import("../views/EmployeView/EmployeSalary/IndexView/departmentSalaryDetail"))
const EmployeDetailView = lazy(() => import("../views/EmployeView/EmployeSalary/IndexView/employeDetailView"))
const DepartmentView = lazy(() => import("../views/DepartmentView"))
const DepartmentEditView = lazy(() => import("../views/DepartmentView/DepartmentEditView"))
const AddGroupView = lazy(() => import("../views/DepartmentView/AddGroupView"))
const AddDepartmentView = lazy(() => import("../views/DepartmentView/AddDepartmentView"))
const DeleteDepartmentView = lazy(() => import("../views/DepartmentView/DeleteDepartmentView"))
const DMainView = lazy(() => import("../views/DepartmentView/DeleteDepartmentView/MainView"))
const EvilControl = lazy(() => import("../views/EvilControl"))
const ChinaInfo = lazy(() => import("../views/EvilControl/ChinaInfo"))
const CompanyInfo = lazy(() => import("../views/EvilControl/CompanyInfo"))
const ShowNoCovid = lazy(() => import("../views/EvilControl/ShowNoCovid"))
const ChinaMap = lazy(() => import("../views//EvilControl/ChinaMap"))
const LoginView = lazy(() => import("../views/LoginView"))
const NotFound = lazy(() => import('../component/404NotFoundView'))
const RecoverEmploye = lazy(() => import("../views/RecoverEmploye"))
const RecoverGroup = lazy(() => import("../views/RecoverGroup"))
const Attendance = lazy(() => import("../views/AttendanceView"))
const EmployeAttendance = lazy(() => import("../views/AttendanceView/employeAttendanceControl"))
const EmployeClock = lazy(() => import("../views/AttendanceView/employeClockControl"))
const ShowClockDeptInfo = lazy(() => import("../views/AttendanceView/showClockDeptInfo"))
const LockEmployeView = lazy(() => import("../views/LockAccountView"))
const ClockInfoControllazy = lazy(() => import("../views/AttendanceView/clockInfoControl"))
const NoticeView = lazy(() => import("../views/NoticeView"))
export {
    LockEmployeView,
    HomeView,
    MainView,
    EmployeAttendance,
    EmployeClock,
    EmployeDetailView,
    EmployeInfo,
    EmployeSalary,
    EmployeView,
    EvilControl,
    SalaryIndexView,
    ShowClockDeptInfo,
    ShowNoCovid,
    DMainView,
    DeleteDepartmentView,
    DepartmentEditView,
    DepartmentSalaryDetail,
    DepartmentView,
    AddDepartmentView,
    AddGroupView,
    Attendance,
    ChinaInfo,
    ChinaMap,
    CompanyInfo,
    LoginView,
    NotFound,
    RecoverEmploye,
    RecoverGroup,
    ClockInfoControllazy,
    NoticeView
}