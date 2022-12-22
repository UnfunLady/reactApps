import { Avatar, Calendar, Card, Image, Pagination, Tabs, Tag } from 'antd';
import { FC, useState, useEffect } from 'react'
import { initChartsOne, todayInfoInit, getBaseInfoClock, getClockInfoToday } from '../../../type/attendance';
import './index.less'
import Table, { ColumnsType } from 'antd/lib/table';
import { DataType } from '../../../type/employeInfo';
import CountUp from "react-countup";
import moment from 'moment';
import { useNavigate } from 'react-router-dom';
const Index: FC = () => {
    const [data, setData] = useState(new todayInfoInit());
    const navigate = useNavigate();
    // 获取今日打卡信息
    const getBaseInfo = () => {
        getClockInfoToday(data, setData, { page: data.data.clockPage, size: data.data.clockSize });
        getBaseInfoClock(data, setData);

    }
    // 初始化echarts
    const initChart = () => {
        initChartsOne(document.querySelector(".chartBox") as HTMLElement)
    }
    useEffect(() => {
        getBaseInfo()
        initChart()
    }, [])
    const columns: ColumnsType<DataType> = [
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
            title: '考勤情况',
            key: 'typeInfo',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color={Number(moment(record.clockTime).format('HH')) > 9 ? '#ee6666' : 'green'}>{Number(moment(record.clockTime).format('HH')) > 9 ? '迟到' : '正常'}</Tag>
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

    ];
    // 修改页码
    const changePage = (page: number, pageSize: number) => {
        data.data.clockPage = page;
        data.data.clockSize = pageSize;
        setData({ ...data })
        getClockInfoToday(data, setData, { page: data.data.clockPage, size: data.data.clockSize });
    }
    // tabs item
    const tabItems =
        [
            {
                label: '全部',
                key: '1',
                children:
                    <>
                        <Table pagination={false} columns={columns} rowKey={(record) => { return Math.random() }} bordered size='small' dataSource={data.data.allClockInfo} />
                        <br />
                        <div style={{ float: 'right' }}>
                            <Pagination
                                total={data.data.allClockCount}
                                size="default"
                                showSizeChanger
                                onChange={changePage}
                                showQuickJumper
                                defaultPageSize={6}
                                defaultCurrent={1}
                                pageSizeOptions={[6]}
                                showTotal={(total) => `今日共 ${total} 打卡信息`}
                            />
                        </div>
                    </>,

            },
            {
                label: '出勤',
                key: '2',
                children: '出勤',

            },
            {
                label: '迟到',
                key: '3',
                children: '迟到',
            },
            {
                label: '请假',
                key: '4',
                children: '请假',
            },
        ]
    // 展示部门打卡信息
    const showClockDeptInfo = (type: string) => {
        switch (type) {
            case "morning":
                navigate("/homeView/attendanceView/showClockDeptInfo", { state: { type: type, deptData: data.data.todayMorningInfo } })
                break;
            case "after":
                navigate("/homeView/attendanceView/showClockDeptInfo", { state: { type: type, deptData: data.data.todayAfterInfo } })
                break;
        }
    }
    return (
        <div style={{ margin: "25px" }}>
            {/* <Header title='员工打卡管理' explain='查看员工的上班打卡信息以及部门总体情况' /> */}
            <Card>
                <div className='bigBox'>
                    <div className='calendar box'>
                        <span style={{ fontWeight: "bold", color: "#8c8c8c" }}>今日信息</span>
                        <Calendar fullscreen={false} />
                    </div>
                    <div className='todayInfo box'>
                        <div className='clockContent'>
                            <div className='icon'>
                                <Avatar size={40} src={require("../../../assets/imges/clock1.png")} />
                            </div>
                            <div className='detailInfo'>
                                <div className='topTitle morning'>
                                    上午打卡部门数：<span className='tnum'> <CountUp start={0} end={data.data.deptMorningCount} separator="," duration={1} /></span>
                                </div>
                                <div className='explain'>
                                    总部门数: <span className='explainNum'> <CountUp start={0} end={data.data.allDeptCount} separator="," duration={1} /></span>
                                </div>
                            </div>
                            <div className='config' onClick={() => {
                                showClockDeptInfo('morning')
                            }}>
                                ...
                            </div>
                        </div>

                        <div className='clockContent'>
                            <div className='icon'>
                                <Avatar size={40} src={require("../../../assets/imges/clock2.png")} />
                            </div>
                            <div className='detailInfo'>
                                <div className='topTitle after'>
                                    下午打卡部门数：<span className='tnum'> <CountUp start={0} end={data.data.deptAfterCount} separator="," duration={1} /></span>
                                </div>
                                <div className='explain'>
                                    总部门数: <span className='explainNum'><CountUp start={0} end={data.data.allDeptCount} separator="," duration={1} /></span>
                                </div>
                            </div>
                            <div className='config' onClick={() => {
                                showClockDeptInfo('after')
                            }}>
                                ...
                            </div>
                        </div>
                        <div className='todayClockNumber'>
                            <div className='contentInfo'>
                                <div className='titleNumber'><CountUp start={0} end={data.data.allClockCount} separator="," duration={1} /></div>
                                <div className='explain'>今日打卡次数</div>
                            </div>
                            <div className='icon'>
                                <Image
                                    width={50}
                                    src={require("../../../assets/imges/zhu.png")}
                                    preview={false}
                                />
                            </div>
                        </div>
                        <div className='todayClockNumber'>
                            <div className='contentInfo'>
                                <div className='titleNumber after'><CountUp start={0} end={data.data.delayCount} separator="," duration={1} /></div>
                                <div className='explain'>今日打卡迟到次数</div>
                            </div>
                            <div className='icon'>
                                <Image
                                    width={35}
                                    src={require("../../../assets/imges/clockWarn.png")}
                                    preview={false}
                                />
                            </div>
                        </div>
                    </div>
                    <div className='chartBox box'>
                    </div>
                </div>
                <div className='allClockInfo'>
                    <div className='leftBox'>
                        <span style={{ fontWeight: "bold", color: "#8c8c8c" }}>基本信息</span>
                        <div className='detailBox'>
                            <div className='cardInfo'>
                                <div className='icon'>
                                    <Image
                                        width={45}
                                        preview={false}
                                        src={require("../../../assets/imges/dept.png")}
                                    />
                                </div>
                                <div className='rightInfo'>
                                    <div className='topTitle'>部门数量</div>
                                    <div className='topNumber'><CountUp start={0} end={data.data.baseInfo.depallCount} separator="," duration={1} /></div>
                                </div>

                            </div>
                            <div className='cardInfo'>
                                <div className='icon'>
                                    <Image
                                        width={45}
                                        preview={false}
                                        src={require("../../../assets/imges/group.png")}
                                    />
                                </div>
                                <div className='rightInfo'>
                                    <div className='topTitle'>小组数量</div>
                                    <div className='topNumber'><CountUp start={0} end={data.data.baseInfo.deptCount} separator="," duration={1} /></div>
                                </div>
                            </div>
                            <div className='cardInfo'>
                                <div className='icon'>
                                    <Image
                                        width={45}
                                        preview={false}
                                        src={require("../../../assets/imges/employe.png")}
                                    />
                                </div>
                                <div className='rightInfo'>
                                    <div className='topTitle'>员工数量</div>
                                    <div className='topNumber'><CountUp start={0} end={data.data.baseInfo.employeCount} separator="," duration={1} /></div>
                                </div>
                            </div>
                            <div className='cardInfo'>
                                <div className='icon'>
                                    <Image
                                        width={45}
                                        preview={false}
                                        src={require("../../../assets/imges/mounthCount.png")}
                                    />
                                </div>
                                <div className='rightInfo'>
                                    <div className='topTitle'>月打卡数</div>
                                    <div className='topNumber'><CountUp start={0} end={data.data.baseInfo.monthClockCount} separator="," duration={1} /></div>
                                </div>
                            </div>
                            <div className='cardInfo'>
                                <div className='icon'>
                                    <Image
                                        width={45}
                                        preview={false}
                                        src={require("../../../assets/imges/delayClock.png")}
                                    />
                                </div>
                                <div className='rightInfo'>
                                    <div className='topTitle'>月迟到数</div>
                                    <div className='topNumber'><CountUp start={0} end={data.data.baseInfo.monthClockDelayCount} separator="," duration={1} /></div>
                                </div>
                            </div>
                            <div className='cardInfo'>
                                <div className='icon'>
                                    <Image
                                        width={45}
                                        preview={false}
                                        src={require("../../../assets/imges/percentage.png")}
                                    />
                                </div>
                                <div className='rightInfo'>
                                    <div className='topTitle'>迟到比率</div>
                                    <div className='topNumber'>{data.data.baseInfo.monthClockPercentage}</div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div className='rightBox'>
                        <div className='topInfo'>
                            <div className='leftBox'>
                                <div className='topTitle'>{moment().format("YYYY-MM-DD")}考勤</div>
                                <div className='explain'>下面展示的是当天所有考勤的员工信息与状态</div>
                            </div>
                            <div className='tRightBox'>
                                <div className='explainNumber'>
                                    <div className='topTitle'><span className='topNum'><CountUp start={0} end={data.data.allClockCount} separator="," duration={1} /></span> 人</div>
                                    <div className='explain'>出勤</div>
                                </div>
                            </div>
                            <div className='tRightBox'>
                                <div className='explainNumber'>
                                    <div className='topTitle'><span className='topNum'>{data.data.delayPercentage}</span> </div>
                                    <div className='explain'>迟到率</div>
                                </div>
                            </div>
                        </div>
                        <div className='mainInfo'>
                            <Tabs items={tabItems} />

                        </div>
                    </div>
                </div>
            </Card>
        </div>
    )

}
export default Index;