import { FC, useState, useEffect } from 'react'
import Header from '../../component/Header';
import { Card, Form, Input, Select, Tag, Table, Button, Pagination, Modal, message } from 'antd';
import { lockEuserDataInit, getEusersInfo, getEusersInfoBykeyWord, resetEuser, updateEuser } from '../../type/attendance';
import { SearchOutlined, EditOutlined, UndoOutlined } from '@ant-design/icons'
import { useForm } from 'antd/es/form/Form';
import { ColumnsType } from 'antd/lib/table';
import { DataType } from '../../type/employeInfo';
const LockEmployeView: FC = () => {
    const [data, setData] = useState(new lockEuserDataInit());
    const [form] = useForm()
    const [edit, setEdit] = useState(false)
    const colums: ColumnsType<DataType> = [
        {
            title: '账号',
            key: 'username',
            dataIndex: 'username',
            align: 'center',
        },
        {
            title: '密码',
            key: 'password',
            dataIndex: 'password',
            align: 'center',
        },
        {
            title: '用户名',
            key: 'nickname',
            dataIndex: 'nickname',
            align: 'center',
        },
        {
            title: '类型',
            key: 'level',
            dataIndex: 'level',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color='#2a9738'>{record.level == "1" ? "管理员账号" : "普通账号"}</Tag>
            }
        },
        {
            title: '状态',
            key: 'islock',
            dataIndex: 'islock',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color={record.islock == "1" ? '#ee6666' : '#2a9738'}>{record.islock == 1 ? "停用" : "正常"}</Tag>
            }
        },
        {
            title: '操作',
            key: 'config',
            dataIndex: 'config',
            align: 'center',
            render: (_, record: any) => {
                return (
                    <>
                        <Button icon={<EditOutlined />} type="primary" style={{ marginRight: "15px" }} onClick={() => { showEdit(record) }}>修改</Button>
                        <Button icon={<UndoOutlined />} type="primary" danger onClick={() => { reset(record) }}>重置账号</Button>
                    </>
                )

            }
        },
    ]
    const [editForm] = useForm();
    const getEusers = () => {
        getEusersInfo(data, setData, {
            keyword: data.data.selectForm.keyword,
            type: data.data.selectForm.type == "" ? 0 : data.data.selectForm.type,
            page: data.data.eusersData.page,
            size: data.data.eusersData.size
        })
    }
    useEffect(() => {
        getEusers()
        form.setFieldValue("type", "正常")
    }, [])
    const changeKeyword = (e: any) => {
        data.data.selectForm.keyword = e.target.value;
        setData({ ...data })
    }
    const search = () => {
        data.data.iskeyWord = true;
        data.data.eusersData.page = 1;
        data.data.eusersData.size = 6;
        setData({ ...data })
        const searchData = {
            keyword: data.data.selectForm.keyword,
            type: data.data.selectForm.type == "" ? 0 : data.data.selectForm.type,
            page: data.data.eusersData.page,
            size: data.data.eusersData.size
        }
        getEusersInfoBykeyWord(data, setData, searchData);
    }
    // 显示全部
    const showAll = () => {
        data.data.iskeyWord = false;
        setData({ ...data })
        getEusers()
    }
    // 选择类型搜索
    const changeSelectType = (value: string) => {
        data.data.selectForm.type = value;
    }
    // 修改账号类型
    const changeEditType = (value: string) => {
        data.data.editForm.type = value;
    }
    const changePage = (page: number, pageSize: number) => {
        data.data.eusersData.page = page;
        data.data.eusersData.size = pageSize;
        setData({ ...data })
        getEusers()

    }
    // 重置
    const reset = async (record: any) => {
        const success = await resetEuser({ username: record.username })
        if (success) {
            getEusers()
        }
    }

    // 点击修改
    const showEdit = (record: any) => {
        data.data.editForm.username = record.username;
        data.data.editForm.password = record.password;
        data.data.editForm.type = record.islock;
        setData({ ...data })
        editForm.setFieldValue("config", record.islock == "0" ? "free" : "block")
        editForm.setFieldValue("password", record.password)
        setEdit(true)
    }
    // 取消修改
    const cancelEdit = () => {
        setEdit(false)
        editForm.resetFields()
    }
    // 修改
    const confrimEdit = () => {
        editForm.validateFields().then(async (res) => {
            data.data.editForm.password = res.password;
            data.data.editForm.type = res.config;
            setData({ ...data })
            const success = await updateEuser(data.data.editForm)
            if (success) {
                message.success("修改账号成功！")
                getEusers()
                setEdit(false)
            } else {
                message.error("修改账号失败")
            }
        }).catch(() => {
            message.warn("请按要求输入数据")
        })
    }
    return (
        <div style={{ margin: "30px" }}>
            <Header title='账号管理' explain='主要用于管理员工账号信息,并对其进行基本的操作' />
            <br />
            <Card>
                <Form form={form} size={"large"} layout={"inline"} >
                    <Form.Item
                        label="用户名"
                        name="username"
                    >
                        <Input onInput={(e) => { changeKeyword(e) }} placeholder='输入要查找的用户名' />
                    </Form.Item>
                    <Form.Item
                        label="账号状态"
                        name="type"
                    >
                        <Select onChange={changeSelectType} style={{ width: 220 }} options={[
                            {
                                value: '1',
                                label: '已封禁',
                            },
                            {
                                value: '0',
                                label: '正常',
                            },
                        ]}>
                        </Select>
                    </Form.Item>
                    <Form.Item
                        name="search"
                    >
                        <Button icon={<SearchOutlined />} onClick={search}>搜索</Button>
                    </Form.Item>
                    <Form.Item

                    >
                        <Button icon={<SearchOutlined />} onClick={showAll}>展示全部</Button>
                    </Form.Item>
                </Form>
                <br />
                <Table rowKey={(record: any) => { return record.username }} pagination={false} bordered columns={colums} dataSource={data.data.eusersData.eusersInfo} />
                <br />
                <div style={{ float: "right" }}>
                    <Pagination defaultPageSize={6} pageSizeOptions={[6, 10, 15]} onChange={changePage} showQuickJumper total={data.data.eusersData.count} showPrevNextJumpers showSizeChanger showTotal={(total) => `共 ${total} 个账号`} />
                </div>

            </Card>
            <Modal
                title="修改账号信息"
                centered
                open={edit}
                maskClosable
                onCancel={cancelEdit}
                width={800}
                onOk={confrimEdit}
            >
                <Form form={editForm} style={{ width: "600px" }} labelCol={{ span: 4 }} wrapperCol={{ span: 16 }}>
                    <Form.Item name="username" label="账号">
                        <Tag color='green'>{data.data.editForm.username}</Tag>
                    </Form.Item>
                    <Form.Item name="password" label="密码" rules={[{ required: true, message: "请输入要修改的密码!" }, { min: 5, message: "密码最少是五位数！" }]}>
                        <Input style={{ width: "220px" }} />
                    </Form.Item>
                    <Form.Item name="config" label="状态">
                        <Select onChange={changeEditType} style={{ width: 220 }} options={[
                            {
                                value: 'block',
                                label: '禁用',
                            },
                            {
                                value: 'free',
                                label: '正常',
                            },
                        ]}>
                        </Select>
                    </Form.Item>

                </Form>
            </Modal>
        </div>
    )

}

export default LockEmployeView;