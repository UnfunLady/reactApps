import React, { FC, useEffect, useState } from 'react';
import { employeIndexInit, getEmployeInfo, } from '../../../type/attendance';
import { useSelector } from 'react-redux';
import Header from '../../../component/Header';
import { Card, Divider, Image } from 'antd';
import './index.less'
const EmployeIndexView: FC = () => {
    const [data, setData] = useState(new employeIndexInit())
    // 获取登录信息
    const userInfo = useSelector((state: any) => {
        return state.user.userList.userInfo
    })
    // 获取基本信息
    const getBaseInfo = () => {
        getEmployeInfo(data, setData, { employeno: userInfo.username })
    }
    useEffect(() => {
        // getBaseInfo()
   
    }, [])

    return (
        <div style={{ margin: "30px" }}>
            <Header title='个人基本信息' explain='展示属于你自己本人的个人基本信息 以及所在的部分小组等信息' />
            <br />
            <Card>
                <div className='topContainer'>
                    <div className='cardInfo'>
                        <div className='topInfo'>
                            <div className='leftBox'>
                                <Image preview={false} src={require("../../../assets/imges/groupW.png")} width={120} height={120} />
                            </div>
                            <div className='rightBox'>
                                <span className='dcount'>所在部门数量</span>
                                <span className='dcountNum'>2</span>
                            </div>
                        </div>
                        <div className='bottomInfo'>
                            <div className='explain'>
                                查看具体信息
                            </div>
                        </div>
                    </div>
                    <div className='cardInfo' style={{ backgroundColor: "#66d4ca" }}>
                        <div className='topInfo'>
                            <div className='leftBox'>
                                <Image preview={false} src={require("../../../assets/imges/employeInfo.png")} width={120} height={120} />
                            </div>
                            <div className='rightBox'>
                                <span className='dcount'>个人档案信息</span>

                            </div>
                        </div>
                        <div className='bottomInfo'>
                            <div className='explain'>
                                查看具体信息
                            </div>
                        </div>
                    </div>
                    <div className='cardInfo' style={{ backgroundColor: "#d35939" }}>
                        <div className='topInfo' style={{ margin: "0px" }}>
                            <div className='leftBox'>
                                <Image preview={false} src={require("../../../assets/imges/employeSalary.png")} width={120} height={120} />
                            </div>
                            <div className='rightBox'>
                                <span className='dcount'>我的当前薪资</span>
                                <span className='dcountNum'>4000</span>
                            </div>
                        </div>

                    </div>
                </div>
                <br />
            </Card>
        </div>

    );
}



export default EmployeIndexView;