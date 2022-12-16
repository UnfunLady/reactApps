import React, { FC, useEffect, useState } from 'react';
import { employeIndexInit, getEmployeInfo, getLeave, } from '../../../type/attendance';
import { useSelector } from 'react-redux';
import Header from '../../../component/Header';
import { Avatar, Button, Card, Col, Descriptions, Divider, Image, Row, Tag, Tooltip } from 'antd';
import { ArrowLeftOutlined, UserOutlined, InfoOutlined, CheckOutlined, CloseOutlined } from '@ant-design/icons'
import './index.less'
import Table, { ColumnsType } from 'antd/lib/table';
const EmployeIndexView: FC = () => {
    // 表格行
    const columns: ColumnsType<any> = [
        {
            title: '请假编号',
            dataIndex: 'leaveNumber',
            align: 'center'
        },
        {
            title: '请假缘由',
            dataIndex: 'whyLeave',
            align: 'center'
        },
        {
            title: '请假时长',
            dataIndex: 'leaveLong',
            align: 'center'
        },
        {
            title: '员工号',
            dataIndex: 'employeno',
            align: 'center'
        },
        {
            title: '员工名',
            dataIndex: 'employename',
            align: 'center'
        },
        {
            title: '小组号',
            dataIndex: 'deptid',
            align: 'center'
        },
        {
            title: '团队号',
            dataIndex: 'dno',
            align: 'center'
        },
        {
            title: '审核回复',
            dataIndex: 'reply',
            align: 'center',
            render: (_, record: any,) => {
                return <span className='reply' dangerouslySetInnerHTML={{ __html: record.reply }}></span>
            },
        },
        {
            title: '申请时间',
            dataIndex: 'leaveWhen',
            align: 'center'
        },
        {
            title: '审核状态',
            dataIndex: 'verfiyState',
            align: 'center',
            render: (_, record: any) => {
                return <>
                    <Tag color={record.verfiyState == "none" ? 'red' : (record.verfiyState === "true" ? '#00965e' : '#ff4d4f')}
                        icon={record.verfiyState == "none" ? <InfoOutlined /> : (record.verfiyState === "true" ? <CheckOutlined /> : <CloseOutlined />)} >{record.verfiyState == "none" ? '未核批' : (record.verfiyState === "true" ? '已通过' : '不通过')}</Tag>
                </>
            }
        },
        {
            title: '核审人',
            dataIndex: 'whichVerfiy',
            align: 'center',
            render: (_, record: any) => {
                return <Tag icon={<UserOutlined />}  >{record.whichVerfiy}</Tag>;
            }
        },

    ];
    const [data, setData] = useState(new employeIndexInit())
    // 获取登录信息
    const userInfo = useSelector((state: any) => {
        return state.user.userList.userInfo
    })
    // 获取基本信息
    const getBaseInfo = () => {
        getEmployeInfo(data, setData, { employeno: userInfo.username })
        getLeave(data, setData, { employeno: userInfo.username })
    }
    useEffect(() => {
        getBaseInfo()

    }, [])
    // 返回
    const back = () => {
        data.employeIndex.showDept = false;
        data.employeIndex.showLeave = false;
        data.employeIndex.showInfo = false;
        setData({ ...data })
    }
    // 展示部门信息
    const showDept = (type: string) => {
        switch (type) {
            case "dept":
                data.employeIndex.showDept = true
                setData({ ...data })
                break;
            case "leave":
                data.employeIndex.showLeave = true
                setData({ ...data })
                break;
            case "info":
                data.employeIndex.showInfo = true
                setData({ ...data })
                break;
            default:
                break;
        }
    }

    return (
        <div style={{ margin: "30px" }}>
            <Header title='个人基本信息' explain='展示属于你自己本人的个人基本信息 以及所在的部分小组等信息' />
            <br />
            <Card>
                {
                    data.employeIndex.showDept == true ?
                        <>
                            <Button type='primary' icon={<ArrowLeftOutlined />} size="large" onClick={back}>返回主页</Button>
                            <br />
                            <br />

                            <Row justify='center' gutter={16} align={"middle"} >
                                {
                                    data.employeIndex.employeInfo.map((dept: any) => {
                                        return (
                                            <Col className="gutter-row" span={6} key={dept.id}>
                                                <Card style={{ borderRadius: "5px", padding: '8px 0' }} className="card">
                                                    <div className="content">
                                                        <div className="item">
                                                            <Avatar src={dept.avatar} />
                                                        </div>
                                                        <div className="item" style={{ marginLeft: "20px" }}>
                                                            <Tooltip overlayInnerStyle={{ color: 'gray', minWidth: "500px" }} title={dept.explain} color="white" key={dept.id} >
                                                                <p style={{ cursor: "help" }}>{dept.dname}</p>
                                                            </Tooltip>
                                                            <p className="explain">{dept.explain}</p>
                                                        </div>
                                                        <div className="item" style={{ minWidth: "50px" }}>
                                                            <span style={{ color: "red" }}>{dept.depallCount}人</span>
                                                        </div>
                                                    </div>
                                                    <div className="action" >
                                                        <Button type="link"  >查看部门详情</Button>
                                                    </div>
                                                </Card>
                                            </Col>
                                        )
                                    })
                                }
                            </Row >

                        </>
                        :
                        (data.employeIndex.showLeave == true ?
                            <>
                                <Button type='primary' icon={<ArrowLeftOutlined />} size="large" onClick={back}>返回主页</Button>
                                <br />
                                <br />
                                <Table bordered columns={columns} dataSource={data.employeIndex.leaveInfo} />
                            </>
                            : data.employeIndex.showInfo == true ? <>
                                <Button type='primary' icon={<ArrowLeftOutlined />} size="large" onClick={back}>返回主页</Button>
                                <br />
                                <br />
                                <Descriptions title="我的信息" bordered>
                                    <Descriptions.Item label="姓名"><Tag color='red'>{data.employeIndex.employeInfo[0].employname}</Tag> </Descriptions.Item>
                                    <Descriptions.Item label="工号"><Tag color='red'>{data.employeIndex.employeInfo[0].employno}</Tag></Descriptions.Item>
                                    <Descriptions.Item label="年龄"><Tag>{data.employeIndex.employeInfo[0].employage}</Tag></Descriptions.Item>
                                    <Descriptions.Item label="性别"><Tag>{data.employeIndex.employeInfo[0].employsex}</Tag></Descriptions.Item>
                                    <Descriptions.Item label="底薪"><Tag>{data.employeIndex.employeInfo[0].employsalary + "元"}</Tag></Descriptions.Item>
                                    <Descriptions.Item label="邮箱"><Tag>{data.employeIndex.employeInfo[0].employemail}</Tag></Descriptions.Item>
                                    <Descriptions.Item label="籍贯"><Tag>{data.employeIndex.employeInfo[0].employaddress}</Tag></Descriptions.Item>
                                    <Descriptions.Item label="入职日期"><Tag>{data.employeIndex.employeInfo[0].entryDate}</Tag></Descriptions.Item>
                                    <Descriptions.Item label="联系方式" ><Tag color='red'>{data.employeIndex.employeInfo[0].employphone}</Tag></Descriptions.Item>
                                    <Descriptions.Item label="身份证" span={2}><Tag color='red'>{data.employeIndex.employeInfo[0].employidcard}</Tag></Descriptions.Item>
                                </Descriptions>

                            </> : <>
                                <div className='topContainer' >
                                    {
                                        data.employeIndex.cardList.map((card: any) => {
                                            return (
                                                <div className='cardInfo' style={{ backgroundColor: card.color }} key={card.id}>
                                                    <div className='topInfo'>
                                                        <div className='leftBox'>
                                                            <Image preview={false} src={card.src} width={120} height={120} />
                                                        </div>
                                                        <div className='rightBox'>
                                                            <span className='dcount'>{card.title}</span>
                                                            <span className='dcountNum'>{card.count ? card.count : ""}</span>
                                                        </div>
                                                    </div>
                                                    <div className='bottomInfo'>
                                                        <div className='explain' onClick={() => { showDept(card.type) }}>
                                                            {card.showInfo ? '查看具体信息' : ''}
                                                        </div>
                                                    </div>
                                                </div>

                                            )
                                        })
                                    }
                                </div>
                            </>)
                }


                <br />
            </Card>
        </div >

    );
}



export default EmployeIndexView;