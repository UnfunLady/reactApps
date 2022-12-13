import { Card } from 'antd';
import { FC, useState, useEffect } from 'react'
import Header from '../../../component/Header';

const Index: FC = () => {
    return (
        <div style={{ margin: "30px" }}>
            <Header title='员工打卡管理' explain='查看员工的上班打卡信息以及部门总体情况' />
            <br />

        </div>
    )

}
export default Index;