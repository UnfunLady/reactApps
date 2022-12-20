import { Avatar, Calendar, Card, Image, Tabs } from 'antd';
import { FC, useState, useEffect } from 'react'
import { initChartsOne } from '../../../type/attendance';
import './index.less'
import Table, { ColumnsType } from 'antd/lib/table';
import { DataType } from '../../../type/employeInfo';
const Index: FC = () => {
    const initChart = () => {
        initChartsOne(document.querySelector(".chartBox") as HTMLElement)
    }
    useEffect(() => {
        initChart()
    }, [])
    const columns: ColumnsType<DataType> = [
        {
            title: '员工',
            dataIndex: 'name',
            key: 'name',
            align: 'center',

        },
        {
            title: '员工号',
            dataIndex: 'age',
            key: 'age',
            align: 'center',
        },
        {
            title: '部门号',
            key: 'action',
            align: 'center',
        },
        {
            title: '考勤情况',
            dataIndex: 'address',
            key: 'address',
            align: 'center',
        },
        {
            title: '打卡时间',
            key: 'tags',
            dataIndex: 'tags',
            align: 'center',
        },

    ];
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
                                    上午打卡部门数：<span className='tnum'>3</span>
                                </div>
                                <div className='explain'>
                                    总部门数: <span className='explainNum'>7</span>
                                </div>
                            </div>
                            <div className='config'>
                                ...
                            </div>
                        </div>

                        <div className='clockContent'>
                            <div className='icon'>
                                <Avatar size={40} src={require("../../../assets/imges/clock2.png")} />
                            </div>
                            <div className='detailInfo'>
                                <div className='topTitle after'>
                                    下午打卡部门数：<span className='tnum'>3</span>
                                </div>
                                <div className='explain'>
                                    总部门数: <span className='explainNum'>7</span>
                                </div>
                            </div>
                            <div className='config'>
                                ...
                            </div>
                        </div>
                        <div className='todayClockNumber'>
                            <div className='contentInfo'>
                                <div className='titleNumber'>10</div>
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
                                <div className='titleNumber after'>10</div>
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
                                    <div className='topNumber'>4</div>
                                </div>

                            </div>
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
                                    <div className='topNumber'>4</div>
                                </div>
                            </div>
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
                                    <div className='topNumber'>4</div>
                                </div>
                            </div>
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
                                    <div className='topNumber'>4</div>
                                </div>
                            </div>
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
                                    <div className='topNumber'>4</div>
                                </div>
                            </div>
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
                                    <div className='topNumber'>4</div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div className='rightBox'>
                        <div className='topInfo'>
                            <div className='leftBox'>
                                <div className='topTitle'>2022-12-20考勤</div>
                                <div className='explain'>下面展示的是当天所有考勤的员工信息与状态</div>
                            </div>
                            <div className='tRightBox'>
                                <div className='explainNumber'>
                                    <div className='topTitle'><span className='topNum'>20</span> 人</div>
                                    <div className='explain'>出勤</div>
                                </div>
                            </div>
                            <div className='tRightBox'>
                                <div className='explainNumber'>
                                    <div className='topTitle'><span className='topNum'>100</span> %</div>
                                    <div className='explain'>迟到率</div>
                                </div>
                            </div>
                        </div>
                        <div className='mainInfo'>
                            <Tabs>
                                <Tabs.TabPane tab="全部" key="item-1">
                                    <Table columns={columns} bordered  size='small'/>
                                </Tabs.TabPane>
                                <Tabs.TabPane tab="出勤" key="item-2">
                                    出勤
                                </Tabs.TabPane>
                                <Tabs.TabPane tab="迟到" key="item-3">
                                    迟到
                                </Tabs.TabPane>
                                <Tabs.TabPane tab="请假" key="item-4">
                                    请假
                                </Tabs.TabPane>
                            </Tabs>
                        </div>
                    </div>
                </div>
            </Card>
        </div>
    )

}
export default Index;