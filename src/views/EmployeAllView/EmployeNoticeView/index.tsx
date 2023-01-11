import { FC, useState, useEffect } from 'react'
import { employeNoticeInit, getNoticeInfo } from '../../../type/notice'
import { Button, Card, Descriptions, Image, Modal, Pagination, Table, Tag } from 'antd'
import { AimOutlined } from '@ant-design/icons'
import './index.less'
import { useSelector } from 'react-redux'
import { ColumnsType } from 'antd/lib/table'
import { DataType } from '../../../type/employeInfo'
import moment from 'moment'
const EmployeNoticeView: FC = () => {
    // 初始化
    const [data, setData] = useState(new employeNoticeInit())
    const [showInfo, setshowInfo] = useState(false)
    useEffect(() => {
        getNotice()
    }, [])
    const userInfo = useSelector((state: any) => {
        return state.user.userList.userInfo;
    })
    const getNotice = () => {
        getNoticeInfo(data, setData, { employeno: userInfo.username, page: data.data.pageData.page, size: data.data.pageData.size })
    }
    // 公告cloums
    const columns: ColumnsType<DataType> = [
        {
            title: '公告编号',
            key: 'id',
            dataIndex: 'id',
            align: 'center',
            render: (_, record: any) => {
                return <Tag >{record.id}</Tag>
            }
        },
        {
            title: '公告主题',
            key: 'thyme',
            dataIndex: 'thyme',
            align: 'center',
            render: (_, record: any) => {
                return <Tag >{record.thyme}</Tag>
            }
        },
        {
            title: '发布者',
            key: 'postMan',
            dataIndex: 'postMan',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color='#476080' >{record.postMan}</Tag>
            }
        },
        {
            title: '发布日期',
            key: 'postTime',
            dataIndex: 'postTime',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color='#476080' >{moment(record.postTime).format("YYYY-MM-DD HH:mm:ss")}</Tag>
            }
        },
        {
            title: '公告时间',
            key: 'startTime',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color='#476080'>{record.startTime}——{record.endTime}</Tag>
            }
        },
        {
            title: '公告详情',
            key: 'content',
            align: 'center',
            render: (_, record: any) => {
                return <Button icon={<AimOutlined />} onClick={() => showNoticeInfo(record)}>点击查看</Button>
            }
        },
    ];
    const showDept = (type: any) => {
        data.data.showType = type;
        setData({ ...data })
    }
    const back = () => {
        data.data.showType = "default";
        setData({ ...data })
    }
    // 显示公告信息
    const showNoticeInfo = (record: any) => {
        data.data.noticeDetail = record;
        setshowInfo(true)
        setData({ ...data })
    }
    const changePage = (page: number, pageSize: number, type: string) => {
        console.log(page, pageSize, type);

    }

    return (
        <div style={{ margin: "30px" }}>
            <Card>

                {data.data.showType === "default" ? <>
                    <div className='topContainer'>
                        {
                            data.data.cardList.map((card: any) => {

                                return (
                                    <div className='cardInfo' style={{ backgroundColor: card.color }} key={card.id}>
                                        <div className='topInfo'>
                                            <div className='leftBox'>
                                                <Image preview={false} src={card.src} width={120} height={120} />
                                            </div>
                                            <div className='rightBox'>
                                                <span className='dcount'>{card.title}</span>
                                                <span className='dcountNum'>{card.count != undefined ? card.count : ""}</span>
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
                </> : (data.data.showType === "showAllNotice" ? <>
                    <Button onClick={back}>返回首页</Button>
                    <br />
                    <br />
                    <Table rowKey={(record) => record.key} pagination={false} bordered columns={columns} dataSource={data.data.employeNoticeData.allNotice} />
                    <br />
                    <div style={{ float: "right" }}>
                        <Pagination
                            total={data.data.employeNoticeData.allNoticeCount}
                            showSizeChanger
                            showQuickJumper
                            showTotal={total => `总共 ${total} 条公告`}
                            defaultPageSize={6}
                            pageSizeOptions={[6, 10, 15]}
                            onChange={(page, pageSize) => { changePage(page, pageSize, "allNotice") }}
                        />
                    </div>
                </> : (data.data.showType === "showSpecialNotice") ? <>
                    <Button onClick={back}>返回首页</Button>
                    <br />
                    <br />
                    <Table rowKey={(record) => record.key} pagination={false} bordered columns={columns} dataSource={data.data.employeNoticeData.specialNotice} />
                    <br />
                    <div style={{ float: "right" }}>
                        <Pagination
                            total={data.data.employeNoticeData.specialNoticeCount}
                            showSizeChanger
                            showQuickJumper
                            showTotal={total => `总共 ${total} 条公告`}
                            defaultPageSize={6}
                            pageSizeOptions={[6, 10, 15]}
                            onChange={(page, pageSize) => { changePage(page, pageSize, "specialNotice") }}
                        />
                    </div>
                </> : <>
                    <Button onClick={back}>返回首页</Button>
                    <br />
                    <br />
                    <Table rowKey={(record) => record.key} pagination={false} bordered columns={columns} dataSource={data.data.employeNoticeData.todayNotice} />
                    <br />
                    <div style={{ float: "right" }}>
                        <Pagination
                            total={data.data.employeNoticeData.todayNoticeCount}
                            showSizeChanger
                            showQuickJumper
                            showTotal={total => `总共 ${total} 条公告`}
                            defaultPageSize={6}
                            pageSizeOptions={[6, 10, 15]}
                            onChange={(page, pageSize) => { changePage(page, pageSize, "todayNotice") }}
                        />
                    </div>
                </>)}
            </Card>

            <Modal open={showInfo} title="公告详情" width="1300px" onCancel={() => setshowInfo(false)} onOk={() => setshowInfo(false)}>
                <Descriptions bordered size={'middle'} >
                    <Descriptions.Item label="公告编号"><Tag >{data.data.noticeDetail.id}</Tag></Descriptions.Item>
                    <Descriptions.Item label="可见部门"><Tag color='red'>{data.data.noticeDetail.isAll == "true" ? "全部" : data.data.noticeDetail.specialDno}</Tag></Descriptions.Item>
                    <Descriptions.Item label="可见小组"><Tag color='red'>{data.data.noticeDetail.isAll == "true" ? "全部" : data.data.noticeDetail.specialDeptId}</Tag></Descriptions.Item>
                    <Descriptions.Item label="公告主题"><Tag color='red'>{data.data.noticeDetail.thyme}</Tag></Descriptions.Item>
                    <Descriptions.Item label="发布者"><Tag >{data.data.noticeDetail.postMan}</Tag></Descriptions.Item>
                    <Descriptions.Item label="发布时间"><Tag >{moment(data.data.noticeDetail.postTime).format("YYYY-MM-DD HH:mm:ss")}</Tag></Descriptions.Item>
                    <Descriptions.Item label="公告起止"><Tag color="red">{data.data.noticeDetail.startTime}---{data.data.noticeDetail.endTime}</Tag></Descriptions.Item>
                </Descriptions>
                <br />
                <Card title="公告内容" style={{ marginTop: "60px",overflow:"scroll" }}>
                    <div dangerouslySetInnerHTML={{ __html: data.data.noticeDetail.content }}></div>
                </Card>
            </Modal>
        </div>
    )


}

export default EmployeNoticeView