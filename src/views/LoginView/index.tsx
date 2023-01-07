import { Button, Form, Input, message } from 'antd'
import { LockOutlined, UserOutlined } from '@ant-design/icons'
import { loginCheck } from '../../type/loginView'
// redux
import { useDispatch, useSelector } from 'react-redux'
import { useForm } from 'antd/es/form/Form'
import { useNavigate } from 'react-router-dom'
import 'animate.css';
import './index.less'
import { useEffect } from 'react'
import { removeAllListeners } from 'process'
export default function LoginView() {
    const dispatch = useDispatch()
    // 登录验证
    const [loginForm] = useForm()
    const navigate = useNavigate()
    const userInfo = useSelector((state: any) => {
        return state.user.userList.userInfo
    })
    const checkSubmit = () => {
        loginForm.validateFields().then(async res => {
            // 登录验证
            const success = await loginCheck({
                username: res.username,
                password: res.password
            }, dispatch)
            if (success) {
                message.success('登录成功！')
                navigate('/homeView/mainView')
            }
        }).catch(err => {
            console.log(err);
            message.warning(err.msg ? err.msg : '用户名或密码不能为空！')
        })
    }
    const keyUpLogin = (e: any) => {
        if (e.key === "Enter") {
            checkSubmit()
        }
    }
    useEffect(() => {
        document.addEventListener("keyup", keyUpLogin);
        return () => {
            document.removeEventListener("keyup", keyUpLogin)
        }
    }, [])
    return (

        <div className='login' >
            <Form
                form={loginForm}
                size='large'
                labelCol={{ span: 4 }}
                wrapperCol={{ span: 20 }}
                name="normal_login"
                className="login-form "
                initialValues={{ remember: true }}
            // onFinish={onFinish}
            >
                <h3 className="header-title animate__animated animate__bounce">LOGIN</h3>
                <Form.Item
                    label="用户名"
                    name="username"
                    rules={[{ required: true, message: '请输入用户名!' }]}

                >
                    <Input prefix={<UserOutlined className="site-form-item-icon" />} placeholder="请输入用户名" />
                </Form.Item>
                <Form.Item
                    label="密码"
                    name="password"
                    rules={[{ required: true, message: '请输入密码!' }]}
                >
                    <Input
                        prefix={<LockOutlined className="site-form-item-icon" />}
                        type="password"
                        placeholder="请输入密码"
                    />
                </Form.Item>
                <Form.Item wrapperCol={{ offset: 4, span: 20 }}>
                    <Button onClick={checkSubmit} className='submitButton' style={{ width: "100%" }}>登录</Button>
                </Form.Item>
            </Form>
        </div>
    )

}