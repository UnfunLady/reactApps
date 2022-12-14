import React, { FC } from 'react';
import { Outlet } from 'react-router-dom';
const EmployeAllView: FC = () => {
    return (
        <div>
            < Outlet />
        </div>

    );
}



export default EmployeAllView;