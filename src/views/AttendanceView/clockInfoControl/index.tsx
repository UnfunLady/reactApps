import { FC, useState, useEffect } from 'react'
import Header from '../../../component/Header'
import { Card, Tree, TreeProps } from 'antd'
import { DownOutlined } from '@ant-design/icons'
import { clockInfoControlInit, getDepallTree } from '../../../type/attendance'
const ClockInfoControl: FC = () => {
    const [data, setData] = useState(new clockInfoControlInit())
    const getTreeInfo = () => {
        getDepallTree(data, setData)
    }
    useEffect(() => {
        getTreeInfo()
    }, [])
    const onSelect: TreeProps['onSelect'] = (selectedKeys, info) => {
        console.log('selected',  info.node);
    };
    return (

        <div style={{ margin: "30px" }}>
            <Header title='打卡信息管理' explain='对所有打卡信息或各部门打卡信息管理' />
            <br />
            <Card>
                <Tree
                    showLine
                    switcherIcon={<DownOutlined />}
                    treeData={data.data.allClockInfo}
                    onSelect={onSelect}
                />
            </Card>
        </div>
    )

}
export default ClockInfoControl