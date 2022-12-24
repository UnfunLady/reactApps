import { Spin } from 'antd'
import { FC, useState, useEffect } from 'react'
import './index.less'
const SuspenseView: FC = () => {

    return (

        <div className='suspenseBox' >
            <Spin />
        </div>
    )

}
export default SuspenseView