import { Button, Card, DatePicker, Descriptions, Form, Input, Result, Select, Steps, Tag, message } from 'antd';
import { useForm } from 'antd/es/form/Form';
import React, { FC, useEffect, useState } from 'react';
import { ArrowRightOutlined, ArrowLeftOutlined } from '@ant-design/icons';
import { useSelector } from 'react-redux';
import Header from '../../../component/Header';
import { addLeave, employeLeaveRequestInit, getAllDept, getGroup, getName } from '../../../type/attendance';
const EmployeLeaveView: FC = () => {
    const [data, setData] = useState(new employeLeaveRequestInit())
    const { Step } = Steps;
    const { Option } = Select;
    const [leaveForm] = useForm()
    // 离开日期
    const onChange = (date: any, dateString: string) => {
        data.data.employeLeaveForm.leaveWhen = dateString;
    }
    const userInfo = useSelector((state: any) => {
        return state.user.userList.userInfo;
    })
    useEffect(() => {
        getAllDept(data, setData, { employeno: userInfo.username });
        leaveForm.setFieldsValue({
            whyLeave: "事假",
            leaveLong: "0.5天"
        })
    }, [])
    // 请假原因
    const selectWhyLeave = (value: any) => {
        data.data.employeLeaveForm.whyLeave = value;
    }
    // 请假时长
    const selectLeaveLong = (value: any) => {
        data.data.employeLeaveForm.leaveLong = value;
    }
    // 选择部门时
    const changeDepall = (value: any, option: any) => {
        leaveForm.setFieldsValue({
            deptId: undefined
        })
        data.data.selectDno = value;
        setData({ ...data })
        getGroup(data, setData, userInfo.username)
    }
    // 获取员工姓名
    const changeDept = (value: any) => {
        data.data.selectDeptId = value;
        setData({ ...data })
        getName(data, setData, { deptId: data.data.selectDeptId, employeno: userInfo.username })

    }
    // 下一步
    const nextStep = async () => {
        switch (data.data.active) {
            case 0:
                leaveForm.validateFields().then(() => {
                    data.data.employeLeaveForm.deptid = leaveForm.getFieldValue("deptId")
                    data.data.employeLeaveForm.dno = leaveForm.getFieldValue("dno")
                    data.data.employeLeaveForm.employename = data.data.employeBaseData.employename;
                    data.data.employeLeaveForm.employeno = data.data.employeBaseData.employeno as number;
                    data.data.active++;
                    setData({ ...data })
                })
                    .catch(() => {
                        message.warn("请按要求填写数据！")
                    })
                break;
            case 1:
                // 发请求插入请假申请
                const success = await addLeave(data.data.employeLeaveForm)
                if (success) {
                    data.data.addSuccess = true;
                    data.data.active++
                    setData({ ...data })
                } else {
                    // 重置信息
                    message.error("申请异常出错")
                    data.data.addSuccess = false;
                    setData({ ...data })
                }
                break;

            default:
                break;
        }
    }
    // 上一步
    const preStep = () => {
        switch (data.data.active) {
            case 1:
                data.data.active--;
                setData({ ...data })
                break;
            default:
                break;
        }
    }
    // 返回第一步
    const backOne = () => {
        leaveForm.resetFields();
        data.data.active = 0;
        data.data.employeBaseData = { employename: undefined, employeno: 0 }
        setData({ ...data })
    }
    return (
        <div style={{ margin: "30px" }}>
            <Header title='请假申请' explain='请假申请发出后 管理员将酌情进行审批' />
            <br />
            <Card>
                <Steps
                    current={data.data.active}
                >
                    <Step title="第一步" description="填写申请" />
                    <Step title="第二步" description="确认申请" />
                    <Step title="第三步" description="提交申请" />
                </Steps>
                <br />
                <br />
                <div style={{ display: data.data.active === 0 ? "block" : "none" }}>
                    <Form form={leaveForm}
                        size="large"
                        style={{ width: "730px", margin: "0 auto", height: "150px" }}
                        layout={"inline"}
                        labelCol={{ span: 7 }}
                        wrapperCol={{ span: 17 }}

                    >
                        <Form.Item label="请假原因" name="whyLeave" rules={[{ required: true, message: '请选择请假原因' }]}>
                            <Select style={{ width: "200px" }} onChange={selectWhyLeave}>
                                <Option value="事假" >事假</Option>
                                <Option value="病假" >病假</Option>
                                <Option value="婚假" >婚假</Option>
                                <Option value="丧假" >丧假</Option>
                            </Select>
                        </Form.Item>
                        <Form.Item label="请假时长" name="leaveLong" rules={[{ required: true, message: '请选择请假时长' }]}>
                            <Select style={{ width: "200px" }} onChange={selectLeaveLong}>
                                <Option value="0.5天" >0.5天</Option>
                                <Option value="1天" >1天</Option>
                                <Option value="2天" >2天</Option>
                                <Option value="3天" >3天</Option>
                                <Option value="1周" >1周</Option>
                                <Option value="一周以上" >一周以上</Option>
                            </Select>
                        </Form.Item>
                        <Form.Item label="何时离开" name="leaveWhen" rules={[{ required: true, message: '请选择离开日期' }]}>
                            <DatePicker format="YYYY-MM-DD HH:mm:ss" showTime onChange={onChange} placeholder="选择离开日期" style={{ width: "200px" }} />
                        </Form.Item>
                        <Form.Item label="所在部门" name="dno" rules={[{ required: true, message: '请选择所在部门' }]}>
                            <Select style={{ width: "200px" }} onChange={changeDepall}>
                                {data.data.depallSelect}
                            </Select>
                        </Form.Item>
                        <Form.Item label="所在小组" name="deptId" rules={[{ required: true, message: '请选择所在小组' }]}>
                            <Select style={{ width: "200px" }} onChange={changeDept}>
                                {data.data.deptSelect}
                            </Select>
                        </Form.Item>
                        <Form.Item label="请假人" name="employename" >
                            <Input placeholder={data.data.employeBaseData.employename !== undefined ? data.data.employeBaseData.employename : "请选择小组以获取员工姓名"} disabled />
                        </Form.Item>
                    </Form>
                </div>

                {/* 展示列表 */}
                <div style={{ display: data.data.active === 1 ? "block" : "none" }}>
                    <Descriptions title="确认请假信息" bordered>
                        <Descriptions.Item label="请假人">
                            <Tag color='red'>{data.data.employeLeaveForm.employename}</Tag>
                        </Descriptions.Item>
                        <Descriptions.Item label="员工号"><Tag color='red'>{data.data.employeLeaveForm.employeno}</Tag></Descriptions.Item>
                        <Descriptions.Item label="请假原因"><Tag color='red'>{data.data.employeLeaveForm.whyLeave}</Tag></Descriptions.Item>
                        <Descriptions.Item label="请假天数"><Tag color='red'>{data.data.employeLeaveForm.leaveLong}</Tag></Descriptions.Item>
                        <Descriptions.Item label="小组号"><Tag color='green'>{data.data.employeLeaveForm.deptid}</Tag></Descriptions.Item>
                        <Descriptions.Item label="部门号"><Tag color='green'>{data.data.employeLeaveForm.dno}</Tag></Descriptions.Item>
                        <Descriptions.Item label="请假日期"><Tag color='green'>{data.data.employeLeaveForm.leaveWhen}</Tag></Descriptions.Item>
                    </Descriptions>
                </div>
                {/* 申请结果 */}
                <div style={{ display: data.data.active === 2 ? "block" : "none" }}>
                    {data.data.addSuccess ? <Result
                        title="申请成功！请等待管理员审核"
                        status="success"
                        extra={
                            <Button type="primary" key="console" onClick={backOne}>
                                返回第一步
                            </Button>
                        }
                    /> : <Result
                        title="申请失败！请重新申请"
                        status="error"
                        extra={
                            <Button type="primary" key="console" onClick={backOne}>
                                返回第一步
                            </Button>
                        } />}
                </div>
                <br />
                <div style={{ margin: "0 auto", textAlign: "center", display: data.data.active < 2 ? "block" : "none" }}>
                    <Button type='primary' disabled={data.data.active == 0} icon={<ArrowLeftOutlined />} style={{ marginRight: "10px" }} onClick={preStep}>上一步</Button>
                    <Button type='primary' icon={<ArrowRightOutlined />} onClick={nextStep}>下一步</Button>
                </div>
            </Card>

        </div>

    );
}



export default EmployeLeaveView;

function useEffct(arg0: () => void, arg1: never[]) {
    throw new Error('Function not implemented.');
}
