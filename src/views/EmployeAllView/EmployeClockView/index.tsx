import React, { FC, useEffect, useState } from 'react';
import Header from '../../../component/Header';
import { Calendar, Card, Tag, Timeline, message } from 'antd';
import { ClockCircleOutlined, CheckOutlined } from '@ant-design/icons'
import { useSelector } from 'react-redux';
import { GetClockInfo, getWhichDeptClock, saveClockInfo } from '../../../type/attendance';
import './index.less'
import moment from 'moment'

const EmployeIndexView: FC = () => {
    // 用户数据
    const userInfo = useSelector((state: any) => {
        return state.user.userList.userInfo || {}
    })
    // 获取该用户所有部门id和小组id

    // 获取当前时间
    const [nowTime, setTime] = useState(moment().format("HH:mm:ss"))
    // 获取当前小时
    const [nowHour, setHour] = useState(0);
    const [isClockMorning, setClockMorning] = useState(false);
    const [isClockAfter, setClockAfter] = useState(false);
    const time = setInterval(() => {
        setTime(moment().format("HH:mm:ss"))
    }, 1000)

    const ClockInfo = async () => {
        const res = await GetClockInfo({
            employeno: userInfo.username,
            clockTime: moment().format("YYYY-MM-DD")
        });
        if (res != undefined) {
            setClockMorning(res.clockMorning);
            setClockAfter(res.clockAfter)
        }

    }

    useEffect(() => {
        setHour(moment().hours())
        ClockInfo();
        return () => {
            clearInterval(time)
        }
    }, [])
    // 插入打卡表
    const saveClock = (info: any) => {
        // 获取员工名字
        saveClockInfo({
            dno: info.dno,
            deptid: info.id,
            employeno: userInfo.username,
            employename: info.employename,
            type: !isClockMorning && !isClockAfter ? "上午" : "下午",
            clockTime: moment().format("YYYY-MM-DD HH:mm:ss")
        })
    }
    // 打卡
    const clock = async () => {
        if (isClockAfter && isClockMorning) {
            message.warning("今日已完成全部打卡！")
        } else {
            if (nowHour > 9 && !isClockMorning) {
                console.log("上午卡");
                // 插入上午卡 所属的每个部门都要插入
                const res: any = await getWhichDeptClock({
                    employeno: userInfo.username
                });
                if (res != undefined) {
                    res.map((info: any) => {
                        //    插入打卡表
                        saveClock(info)
                    })
                    ClockInfo()
                }
            } else if (isClockMorning && nowHour < 18) {
                message.warning("还未到下班时间！请继续努力工作哦~")
            } else {
                console.log("下午卡");
                // 插入下班卡 所属的每个部门都要插入
                const res: any = await getWhichDeptClock({
                    employeno: userInfo.username
                });
                if (res != undefined) {
                    res.map((info: any) => {
                        //    插入打卡表
                        saveClock(info)
                    })
                    ClockInfo()
                }
            }
        }


    }

    return (
        <div style={{ margin: "30px" }}>
            <Header title='员工打卡页' explain='于每日上下班前进行打卡 员工有多个部门也会一起打卡  由于不能定位 只能模拟打卡' />
            <br />
            <Card>
                <div className='container'>
                    <div className='calendar'>
                        <p style={{ fontSize: "18px" }}>今日日期</p>
                        <div >
                            <Calendar fullscreen={false} />
                        </div>
                    </div>
                    <div className='timeLine'>
                        <Timeline>
                            <Timeline.Item dot={<ClockCircleOutlined style={{ fontSize: '14px' }} />} color={isClockMorning ? "green" : "gray"}>上班打卡 (上班时间 9:00)</Timeline.Item>
                            <Timeline.Item dot={<ClockCircleOutlined style={{ fontSize: '14px' }} />} color={(isClockMorning && isClockAfter) ? "green" : "gray"}>下班打卡 (下班时间 18:00)
                                <span style={{ color: 'red', display: nowHour < 18 ? 'block' : 'none', fontSize: '10px' }} > 未到下班时间</span>
                            </Timeline.Item>
                            <Timeline.Item dot={<CheckOutlined style={{ fontSize: '14px' }} />} color={isClockMorning && isClockAfter ? "green" : "gray"}>今日打卡完成</Timeline.Item>
                        </Timeline>
                    </div>
                    {isClockAfter && isClockMorning ? <Tag color='green'>今日已完成打卡</Tag> : <>
                        <div className={isClockMorning && nowHour < 9 ? 'clockCircle' : (isClockMorning && nowHour >= 18 ? 'clockCircle' : 'clockCircle yellowCircle')} onClick={clock}>
                            <div className='topTitle'>
                                {isClockMorning ? "下班打卡" : "上班打卡"}
                            </div>
                            <div className='nowTime'>{nowTime}</div>
                        </div></>}
                </div>
            </Card >
        </div >

    );
}



export default EmployeIndexView;