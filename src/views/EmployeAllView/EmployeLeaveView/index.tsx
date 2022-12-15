import { Button, Card, DatePicker, Form, Input, Select, Steps } from 'antd';
import { useForm } from 'antd/es/form/Form';
import React, { FC, useEffect, useState } from 'react';
import { ArrowRightOutlined } from '@ant-design/icons';
import { useSelector } from 'react-redux';
import Header from '../../../component/Header';
import { employeLeaveRequestInit, getAllDept, getGroup, getName } from '../../../type/attendance';
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
    // 选择部门时
    const changeDepall = (value: any, option: any) => {
        leaveForm.setFieldsValue({
            deptno: undefined
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
                <Form form={leaveForm}
                    size="large"
                    style={{ width: "730px", margin: "0 auto", height: "150px" }}
                    layout={"inline"}
                    labelCol={{ span: 7 }}
                    wrapperCol={{ span: 17 }}

                >
                    <Form.Item label="请假原因" name="whyLeave">
                        <Select style={{ width: "200px" }}>
                            <Option value="事假" >事假</Option>
                            <Option value="病假" >病假</Option>
                            <Option value="婚假" >婚假</Option>
                            <Option value="丧假" >丧假</Option>
                        </Select>
                    </Form.Item>
                    <Form.Item label="请假时长" name="leaveLong">
                        <Select style={{ width: "200px" }}>
                            <Option value="0.5天" >0.5天</Option>
                            <Option value="1天" >1天</Option>
                            <Option value="2天" >2天</Option>
                            <Option value="3天" >3天</Option>
                            <Option value="1周" >1周</Option>
                            <Option value="一周以上" >一周以上</Option>
                        </Select>
                    </Form.Item>
                    <Form.Item label="何时离开" name="leaveWhen">
                        <DatePicker format="YYYY-MM-DD HH:mm:ss" showTime onChange={onChange} placeholder="选择离开日期" style={{ width: "200px" }} />
                    </Form.Item>
                    <Form.Item label="所在部门" name="dno">
                        <Select style={{ width: "200px" }} onChange={changeDepall}>
                            {data.data.depallSelect}
                        </Select>
                    </Form.Item>
                    <Form.Item label="所在小组" name="deptno">
                        <Select style={{ width: "200px" }} onChange={changeDept}>
                            {data.data.deptSelect}
                        </Select>
                    </Form.Item>
                    <Form.Item label="请假人" name="employename">
                        <Input placeholder={data.data.employeBaseData.employename !== undefined ? data.data.employeBaseData.employename : "请选择小组以获取员工姓名"} disabled />
                    </Form.Item>
                </Form>
                <br />
                <div style={{ margin: "0 auto", textAlign: "center" }}>
                    <Button type='primary' icon={<ArrowRightOutlined />}>下一步</Button>

                </div>
            </Card>

        </div>

    );
}



export default EmployeLeaveView;

function useEffct(arg0: () => void, arg1: never[]) {
    throw new Error('Function not implemented.');
}
