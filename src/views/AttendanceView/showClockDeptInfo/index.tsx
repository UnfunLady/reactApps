import { FC, useState, useEffect } from 'react'
import { useLocation } from 'react-router-dom'
import { showDeptInit } from '../../../type/attendance'
import './index.less'
import { Avatar, Card, Col, Empty, Row, Tag } from 'antd'

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
    }, [])
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
                                        <div className='clockInfo'>
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
                </>}


        </div>
    )

}
export default ShowClockDeptInfo;