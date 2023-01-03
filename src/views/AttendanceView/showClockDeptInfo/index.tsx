import { FC, useState, useEffect } from 'react'
import { useLocation } from 'react-router-dom'
import { showDeptInit, getTodayEmployeClockInfo } from '../../../type/attendance'
import './index.less'
import { Avatar, Col, Drawer, Empty, Pagination, Row, Table, Tag } from 'antd'
import { ColumnsType } from 'antd/lib/table'
import { DataType } from '../../../type/employeInfo'
import moment from 'moment'
const ShowClockDeptInfo: FC = () => {
    const [data, setData] = useState(new showDeptInit())
    const location = useLocation();
    const state: any = location.state;

    useEffect(() => {
        switch (state.type) {
            case 'morning':
                // 修改显示
                data.data.showMorningDeptInfo = true;
                data.data.deptData = state.deptData;
                setData({ ...data })
                break;
            case 'after':
                // 修改显示
                data.data.showAfterDeptInfo = true;
                data.data.deptData = state.deptData;
                setData({ ...data })
                break;
        }
        console.log(data.data);
    }, [])

    const [showEmploye, setShowEmploye] = useState(false);
    const onClose = () => {
        setShowEmploye(false)
    }
    const showClockEmployeInfo = (dept: any) => {
        data.data.dno = dept.dno;
        data.data.todayEmployeCount = dept.clockNum;
        setData({ ...data })
        getTodayEmployeClockInfo(data, setData, { dno: data.data.dno, page: data.data.page, size: data.data.size, type: data.data.showMorningDeptInfo ? "morning" : "after" }, setShowEmploye);
    }
    const changePage = (page: number, pageSize: number) => {
        data.data.page = page;
        data.data.page = pageSize;
        setData({ ...data })
        getTodayEmployeClockInfo(data, setData, { dno: data.data.dno, page: data.data.page, size: data.data.size, type: data.data.showAfterDeptInfo ? "after" : "morning" }, setShowEmploye);
    }
    const colums: ColumnsType<DataType> = [
        {
            title: '员工名',
            key: 'employname',
            dataIndex: 'employname',
            align: 'center',
        },
        {
            title: '员工号',
            key: 'employno',
            dataIndex: 'employno',
            align: 'center',
        },
        {
            title: '小组',
            key: 'deptname',
            dataIndex: 'deptname',
            align: 'center',
        },
        {
            title: '打卡类别',
            key: 'type',
            dataIndex: 'type',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color={record.type == "上午" ? '#79a0c9' : '#144170'}>{record.type == "上午" ? '上班卡' : '下班卡'}</Tag>
            }
        },
        {
            title: '状态',
            key: 'typeInfo',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color={(Number(moment(record.clockTime).format('HH')) > 8 && record.type == "上午" || Number(moment(record.clockTime).format('HH')) < 18 && record.type == "下午") ? '#ee6666' : '#2a9838'}>{(Number(moment(record.clockTime).format('HH')) > 8 && record.type == "上午") ?
                    '迟到' : (Number(moment(record.clockTime).format('HH')) < 18 && record.type == "下午") ? "早退" : "正常"}</Tag>
            }
        },
        {
            title: '打卡时间',
            key: 'clockTime',
            dataIndex: 'clockTime',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color='#79a0c9'>{moment(record.clockTime).format('yyyy-MM-DD HH:mm:ss')}</Tag>
            }
        },
    ]
    return (
        <div style={{ margin: "30px" }}>
            {data.data.deptData.length > 0 ? <>
                <Row justify="space-around" style={{ margin: "180px auto" }}>
                    {data.data.deptData.map((dept: any) => {
                        return (
                            <Col span={4} key={dept.dno}>
                                <div className='deptDetailInfo'>
                                    <div className='avatar'><Avatar size={56} src={dept.avatar} /> </div>
                                    <div className='detail'>
                                        <div className='dname'>{dept.dname}</div>
                                        <div className='dcount'>总人数:{dept.count}/小组数:{dept.groupCount}</div>
                                        <div className='explain'>
                                            {dept.explain}
                                        </div>
                                        <div className='clockInfo' onClick={() => { showClockEmployeInfo(dept) }}>
                                            上午打卡数: <span style={{ color: "red" }}>{dept.clockNum}</span> 人/总人数:<span style={{ color: "#285b90" }}>{dept.count}</span> 人
                                        </div>
                                        <div className='mask'>
                                            <Tag color={dept.clockNum === dept.count ? "#2b9939" : "#cd201f"}>{dept.clockNum === dept.count ? "已全勤" : "未全勤"}</Tag>
                                        </div>
                                    </div>
                                </div>
                            </Col>
                        )
                    })}
                </Row>
            </> :
                <>
                    <div style={{ margin: "180px auto" }}>
                        <Empty />
                    </div>
                </>
            }
            <Drawer
                title="该部门打卡信息如下"
                placement={"top"}
                closable={false}
                onClose={onClose}
                open={showEmploye}
                height="450px"
            >
                <Table rowKey={(record: any) => record.employno + Math.random()} pagination={false} bordered columns={colums} dataSource={data.data.employeData} size="small" />
                <br />
                <div style={{ float: "right" }}>
                    <Pagination
                        total={data.data.todayEmployeCount}
                        size="default"
                        showSizeChanger
                        onChange={changePage}
                        showQuickJumper
                        defaultPageSize={6}
                        defaultCurrent={1}
                        pageSizeOptions={[6]}
                        showTotal={(total) => `今日共 ${total} 人打卡`}
                    />
                </div>
            </Drawer>
        </div >
    )

}
export default ShowClockDeptInfo;