import { FC, useState, useEffect } from 'react'
import Header from '../../../component/Header'
import { Button, Card, DatePicker, DatePickerProps, Form, Input, Modal, Select, Table, Tag, Tree, TreeProps, message } from 'antd'
import { CaretDownOutlined, EditOutlined, DownCircleOutlined } from '@ant-design/icons'
import { clockInfoControlInit, getDepallTree, getClockInfoTree, updateClockInfo } from '../../../type/attendance'
import moment from 'moment'
import { useForm } from 'antd/es/form/Form'


const ClockInfoControl: FC = () => {
    const [data, setData] = useState(new clockInfoControlInit())
    const [edit, setEdit] = useState(false)
    const [editForm] = useForm()
    const getTreeInfo = () => {
        getDepallTree(data, setData)
    }
    useEffect(() => {
        getTreeInfo()
    }, [])

    const onSelect: TreeProps['onSelect'] = (selectedKeys, info: any) => {
        if (info.node.isFather && info.node.isFather === true) {
            const postData = {
                dno: info.node.dno,
                isDepall: true
            }
            // 发请求获取数据
            getClockInfoTree(data, setData, postData)
        } else {
            const postData = {
                dno: info.node.dno,
                deptId: info.node.deptId,
                isDepall: false
            }
            // 发请求获取数据
            getClockInfoTree(data, setData, postData)
        }

    };

    const cloumns: any = [
        {
            title: '员工',
            key: 'employename',
            dataIndex: 'employename',
            align: 'center',
        },
        {
            title: '员工号',
            dataIndex: 'employeno',
            key: 'employeno',
            align: 'center',
        },
        {
            title: '部门号',
            key: 'dno',
            dataIndex: 'dno',
            align: 'center',
        },
        {
            title: '小组号',
            key: 'deptid',
            dataIndex: 'deptid',
            align: 'center',
        },
        {
            title: '考勤情况',
            key: 'typeInfo',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color={(Number(moment(record.clockTime).format('HH')) > 8 && record.type == "上午" || Number(moment(record.clockTime).format('HH')) < 18 && record.type == "下午") ? '#ee6666' : '#2a9838'}>{(Number(moment(record.clockTime).format('HH')) > 8 && record.type == "上午") ?
                    '迟到' : (Number(moment(record.clockTime).format('HH')) < 18 && record.type == "下午") ? "早退" : "正常"}</Tag>
            }
        },
        {
            title: '类型',
            key: 'type',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color={record.type == "上午" ? '#79a0c9' : '#144170'}>{record.type == "上午" ? '上班卡' : '下班卡'}</Tag>
            }
        },
        {
            title: '打卡时间',
            key: 'clockTime',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color='#79a0c9'>{moment(record.clockTime).format('yyyy-MM-DD HH:mm:ss')}</Tag>
            }

        },
        {
            title: '操作',
            key: 'nothing',
            align: 'center',
            render: (_, record: any) => {
                return <Button type='dashed' icon={<EditOutlined />} onClick={() => { showEdit(record) }}>修改</Button>
            }
        },
    ]

    const showEdit = (record: any) => {
        setEdit(true)
        data.data.editForm = {
            dno: record.dno,
            employename: record.employename,
            employeno: record.employeno,
            deptId: record.deptid,
            type: record.type,
            typeInfo: (Number(moment(record.clockTime).format('HH')) > 8 && record.type == "上午") ?
                '迟到' : '正常',
            originClockTime: moment(record.clockTime).format('yyyy-MM-DD HH:mm:ss'),
            clockTime: moment(record.clockTime).format('yyyy-MM-DD HH:mm:ss')
        }
        editForm.setFieldsValue({
            typeInfo: (Number(moment(record.clockTime).format('HH')) > 8 && record.type == "上午") ?
                '迟到' : '正常',
            clockTime: moment(record.clockTime, 'YYYY-MM-DD HH:mm:ss')
        })
    }
    const cancelEdit = () => {
        setEdit(false)
        data.data.editForm = {
            dno: 0,
            employename: '',
            employeno: 0,
            deptId: 0,
            typeInfo: '',
            originClockTime: '',
            clockTime: '',
            type: '',
        }
    }
    const changeDate: DatePickerProps['onChange'] = (date, dateString) => {
        data.data.editForm.clockTime = dateString;
        setData({ ...data })
        if (data.data.editForm.type == "上午") {
            editForm.setFieldsValue({
                typeInfo: (Number(moment(data.data.editForm.clockTime).format('HH')) > 8 && data.data.editForm.type == "上午") ?
                    '迟到' : '正常'
            })
        } else {
            editForm.setFieldsValue({
                typeInfo: (Number(moment(data.data.editForm.clockTime).format('HH')) < 18 && data.data.editForm.type == "下午") ?
                    '早退' : '正常'
            })
        }
    }
    const confirmEdit = () => {
        editForm.validateFields().then(async res => {
            // 发请求修改
            const success = await updateClockInfo(data.data.editForm)
            if (success) {
                message.success("修改打卡信息成功！")
                setEdit(false)
                const postData = {
                    dno: data.data.editForm.dno,
                    deptId: data.data.editForm.deptId,
                    isDepall: false
                }
                getClockInfoTree(data, setData, postData)
                cancelEdit()
            }
        }).catch(() => {
            message.warn("请按要求输入数据！")
        })
    }


    return (

        <div style={{ margin: "30px" }}>
            <Header title='打卡信息管理' explain='对所有打卡信息或各部门打卡信息管理' />
            <br />
            <Card>
                <div style={{ display: "flex" }}>
                    <div className='treeContainer' style={{ width: "400px" }}>
                        <Tree
                            switcherIcon={<DownCircleOutlined />}
                            treeData={data.data.allClockTreeInfo}
                            onSelect={onSelect}
                            showIcon
                            style={{ fontSize: "14px" }}
                        />
                    </div>
                    <div style={{ flex: "1", background: "#fff" }}>
                        <Table rowKey={() => Math.random()} columns={cloumns} size="middle" bordered dataSource={data.data.allClockInfo} />
                    </div>
                </div>
            </Card>
            {/* 修改modal */}
            <Modal title="修改打卡信息" open={edit} width={752} onOk={confirmEdit} onCancel={cancelEdit}>
                <Form form={editForm} style={{ width: "450px" }} labelCol={{ span: 4 }} wrapperCol={{ span: 16 }}>
                    <Form.Item name="employename" label="员工">
                        <Tag color='red' >{data.data.editForm.employename}</Tag>
                    </Form.Item>
                    <Form.Item name="employeno" label="员工号">
                        <Tag color='red'>{data.data.editForm.employeno}</Tag>
                    </Form.Item>
                    <Form.Item name="dno" label="部门号">
                        <Tag >{data.data.editForm.dno}</Tag>
                    </Form.Item>
                    <Form.Item name="deptid" label="团队号">
                        <Tag >{data.data.editForm.deptId}</Tag>
                    </Form.Item>
                    <Form.Item name="typeInfo" label="状态" >
                        <Select options={[
                            {
                                value: data.data.editForm.type == "上午" ? "迟到" : "早退",
                                label: data.data.editForm.type == "上午" ? "迟到" : "早退",
                                disabled: (Number(moment(data.data.editForm.clockTime).format('HH')) > 17 && data.data.editForm.type == "下午") ? true : false
                            },
                            {
                                value: '正常',
                                disabled: (Number(moment(data.data.editForm.clockTime).format('HH')) > 8 && data.data.editForm.type == "上午")
                                    ? true : false,
                                label: '正常',
                            }]}>
                        </Select>
                    </Form.Item>
                    <Form.Item label="状态说明">
                        <span style={{ color: "#12aab5", fontSize: "12px" }}>状态需要根据实际打卡时间调整</span>
                    </Form.Item>
                    <Form.Item name="clockTime" label="打卡时间">
                        <DatePicker showTime onChange={changeDate} />
                    </Form.Item>
                </Form>
            </Modal>
        </div>
    )

}
export default ClockInfoControl