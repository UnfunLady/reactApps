import { FC, useState, useEffect } from 'react'
import { SearchOutlined } from '@ant-design/icons'
import { Button, Card, DatePicker, DatePickerProps, Descriptions, Form, Input, Modal, Pagination, Popconfirm, Select, Tag, Upload, message } from 'antd'
import { AimOutlined } from '@ant-design/icons'
import { useForm } from 'antd/es/form/Form'
// 引入富文本编辑器组件
import BraftEditor from 'braft-editor'
// 引入编辑器样式
import 'braft-editor/dist/index.css'
import { ContentUtils } from 'braft-utils'
import './index.less'
import { RcFile, UploadFile, UploadProps } from 'antd/lib/upload'
import { attendanceApi } from '../../api'
import Table, { ColumnsType } from 'antd/lib/table'
import { DataType } from '../../type/employeInfo'
import moment from 'moment'
import { RangePickerProps } from 'antd/lib/date-picker'
import { useSelector } from 'react-redux'

const NoticView: FC = () => {
    const [searchForm] = useForm()
    const [noticeForm] = useForm()
    const [noticeInfo, setNoticeInfo] = useState([])
    const [showNotice, setShowNotice] = useState(false)
    const [showInfo, setshowInfo] = useState(false)
    // 富文本
    const [content, setContent] = useState(BraftEditor.createEditorState(null))
    const [fileList, setFileList] = useState(Array<String>);
    let [selectDept, setSelectDept] = useState([])
    const [selectArray, setselectArray] = useState([])
    const [startTime, setStartTime] = useState("")
    const [endTime, setEndTime] = useState("")
    const [pageData, setPageData] = useState({
        page: 1, pageSize: 6, count: 0
    })
    // 展示公告的信息
    const [noticeDetail, setNoticeDetail] = useState(Object)
    const { RangePicker } = DatePicker;
    // 发布者
    const userInfo = useSelector((state: any) => {
        return state.user.userList.userInfo
    })

    //富选框参数
    const controls: any = ['undo', 'redo', 'separator',
        'font-size', 'line-height', 'letter-spacing', 'separator',
        'text-color', 'blod', 'italic', 'underline', 'strike-through', 'separator',
        'superscript', 'subscript', 'remove-styles', 'emoji', 'separator', 'text-indent', 'text-align', 'separator',
        'headings', 'list-ul', 'list-ol', 'blockquote', 'code', 'separator',
        'link', 'separator', 'hr', 'separator',
        'clear', 'separator',
    ]
    // 公告cloums
    const columns: ColumnsType<DataType> = [
        {
            title: '公告编号',
            key: 'id',
            dataIndex: 'id',
            align: 'center',
            render: (_, record: any) => {
                return <Tag >{record.id}</Tag>
            }
        },
        {
            title: '公告主题',
            key: 'thyme',
            dataIndex: 'thyme',
            align: 'center',
            render: (_, record: any) => {
                return <Tag >{record.thyme}</Tag>
            }
        },
        {
            title: '公告是否全体可见',
            dataIndex: 'isAll',
            key: 'isAll',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color={record.isAll == "true" ? "#2c993a" : "red"}>{record.isAll == "true" ? "是" : "否"}</Tag>
            }
        },
        {
            title: '发布者',
            key: 'postMan',
            dataIndex: 'postMan',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color='#476080' >{record.postMan}</Tag>
            }
        },
        {
            title: '发布日期',
            key: 'postTime',
            dataIndex: 'postTime',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color='#476080' >{record.postTime}</Tag>
            }
        },
        {
            title: '公告时间',
            key: 'startTime',
            align: 'center',
            render: (_, record: any) => {
                return <Tag color='#476080'>{record.startTime}——{record.endTime}</Tag>
            }
        },
        {
            title: '公告详情',
            key: 'content',
            align: 'center',
            render: (_, record: any) => {
                return <Button icon={<AimOutlined />} onClick={() => showNoticeInfo(record)}>点击查看</Button>
            }
        },
    ];
    // 获取全部部门小组信息
    const getAllDeptInfo = async () => {
        const res: any = await attendanceApi.reqGetAllDeptInfo();
        if (res.code === 200) {
            selectDept = res.allDeptInfo.map((item: any) => {
                return {
                    label: item.deptname,
                    value: item.id,
                    dno: item.deptno
                }
            })
            setSelectDept(selectDept)
        }
    }
    // 获取全部公告
    const getAllNotice = async () => {
        const res: any = await attendanceApi.reqGetAllNoticeInfo({ page: pageData.page, size: pageData.pageSize });
        if (res.code === 200) {
            setNoticeInfo(res.noticeInfo);
            pageData.count = res.count;
            setPageData({
                ...pageData
            })
        }
    }
    const changePage = (page: number, pageSize: number) => {
        pageData.page = page;
        pageData.pageSize = pageSize;
        setPageData({
            ...pageData
        })
        getAllNotice()
    }
    useEffect(() => {
        setContent(BraftEditor.createEditorState(null))
        getAllDeptInfo()
        getAllNotice()
    }, [])
    // 上传前
    const beforeUpload = (file: RcFile) => {
        const isJpgOrPng = file.type === 'image/jpeg' || file.type === 'image/png';
        if (!isJpgOrPng) {
            message.error('只能上传 JPG/PNG 文件!');
        }
        const isLt2M = file.size / 1024 / 1024 < 2;
        if (!isLt2M) {
            message.error('图片大小必须小于 2MB!');
            return false;
        }
    };

    const handleChange: UploadProps['onChange'] = ({ file, fileList: newFileList }) => {
        // 上传成功则回显
        if (file && file.status === "done" && file.response.msg == "success") {
            fileList.push(file.response.url)
            setFileList([...fileList]);
            setContent(ContentUtils.insertMedias(content, [{
                type: 'IMAGE',
                url: file.response.url
            }]))

        } else if (file && file.status === "error") {
            message.error("图片上传失败！")
        }

    }
    // 公告Select

    const changeSelect = (value: string[], option: any) => {
        setselectArray(option)
    }
    // 公告时间change
    const noticeTimeChange = (value: DatePickerProps['value'] | RangePickerProps['value'], dateString: [string, string]) => {
        console.log(value, dateString);
        setStartTime(dateString[0])
        setEndTime(dateString[1])

    }
    // 拓展上传组件
    const extendControlsContent: any = [
        {
            key: 'antd-uploader',
            type: 'component',
            component: (
                <Upload
                    accept="image/*"
                    showUploadList={false}
                    onChange={handleChange}
                    beforeUpload={beforeUpload}
                    action="/api/api/uploadImgNotice"
                >
                    {/* 这里的按钮最好加上type="button"，以避免在表单容器中触发表单提交，用Antd的Button组件则无需如此 */}
                    <button type="button" className="control-item button upload-button" data-title="插入图片">
                        插入图片
                    </button>
                </Upload>
            )
        }
    ]

    const noticeCancel = async () => {
        await attendanceApi.reqDeleteImageList({ deleteList: fileList });
        setShowNotice(false)
        setselectArray([])
        noticeForm.resetFields()
        setContent(BraftEditor.createEditorState(null))
        setFileList([])
    }
    // 删除多余图片
    const deleteImage = async (deleteList: Array<String>) => {
        const res: any = await attendanceApi.reqDeleteImageList({ deleteList: deleteList });
        if (res.code === 200) {
            // 执行新增公告操作
            const postData = {
                thyme: noticeForm.getFieldValue("thyme"),
                specialArray: selectArray,
                isAll: selectArray.length === 0 ? true : false,
                content: content.toHTML(),
                startTime: startTime,
                endTime: endTime,
                postMan: userInfo.username,
                postTime: moment().format('YYYY-MM-DD HH:mm:ss')
            }
            const response: any = await attendanceApi.reqAddNotice(postData);
            if (response.code === 200) {
                message.success("新增公告成功!")
                setShowNotice(false)
                setselectArray([])
                noticeForm.resetFields()
                setContent(BraftEditor.createEditorState(null))
                setFileList([])
                getAllNotice()

            } else {
                message.error("新增公告失败!")
                setShowNotice(false)
                setselectArray([])
                noticeForm.resetFields()
                setContent(BraftEditor.createEditorState(null))
                setFileList([])
            }

        } else {
            message.error("新增公告失败!")
        }
    }
    const confirmNotice = () => {
        if (content.toHTML().trim() === "<p></p>") {
            message.warn("公告内容不能为空")
        } else {
            noticeForm.validateFields().then(() => {
                //    判断图片和所在的html文本对比是否少了 少了服务器则删除那个图片
                const deleteList: Array<String> = [];
                if (fileList.length > 0) {
                    fileList.map((item, index) => {
                        if (content.toHTML().indexOf(item) !== -1) {
                            //  do nothing
                        } else {
                            // 去掉不存在的项
                            deleteList.push(item as string);
                        }
                    })
                }
                deleteImage(deleteList)
            }).catch((err) => {
                console.log(err);

                message.warn("请按要求输入数据！")
            })
        }
    }
    // 展示公告信息
    const showNoticeInfo = (record: any) => {
        setNoticeDetail(record)
        setshowInfo(true)
    }
    // 
    const infoCancel = () => {
        setshowInfo(false)
    }

    const confirmDelete = async () => {
        const res: any = await attendanceApi.reqDelNotice({ id: noticeDetail.id });
        if (res.code === 200) {
            message.success("删除公告成功！")
            setshowInfo(false)
            getAllNotice()
        } else {
            setshowInfo(false)
            message.success("删除公告失败！")
        }
    }
    return (


        <div style={{ margin: "30px" }}>
            <Card>
                <Form form={searchForm} size="large" layout='inline'>
                    <Form.Item name="keyword" >
                        <Input placeholder='输入公告主题或ID' />
                    </Form.Item>
                    <Button icon={<SearchOutlined />}>搜索</Button>
                    <Button style={{ marginLeft: "20px" }} danger icon={<SearchOutlined />} onClick={() => setShowNotice(true)}>发布新公告</Button>

                </Form>
                <br />
                <Table size='middle' rowKey={() => Math.random()} bordered columns={columns} pagination={false} dataSource={noticeInfo} />
                <br />
                <div style={{ float: "right" }}>
                    <Pagination
                        total={pageData.count}
                        showSizeChanger
                        showQuickJumper
                        showTotal={total => `总共 ${total} 条公告`}
                        defaultPageSize={6}
                        pageSizeOptions={[6, 10, 15]}
                        onChange={changePage}
                    />
                </div>
            </Card>
            <Modal open={showNotice} title="发布公告" closable onOk={confirmNotice} width="1300px" onCancel={noticeCancel}>
                <Form form={noticeForm} size="large"  >
                    <Form.Item name="thyme" label="公告主题"
                        labelCol={{ span: 2 }}
                        wrapperCol={{ span: 6 }} rules={[{ required: true, message: "请输入公告主题！" }, { min: 5, message: "最少输入5个字符！" }]}>
                        <Input />
                    </Form.Item>
                    <Form.Item name="received" label="接收部门"
                        labelCol={{ span: 2 }}
                        wrapperCol={{ span: 14 }}>
                        <Select mode="multiple"
                            placeholder="默认全公司可见"
                            allowClear
                            onChange={changeSelect}
                            options={selectDept}

                        />
                    </Form.Item>
                    <Form.Item name="date" label="公告时间"
                        rules={[{ required: true, message: "请选择公告起始日期！" }]}
                        labelCol={{ span: 2 }}
                        wrapperCol={{ span: 14 }}>
                        <RangePicker
                            onChange={noticeTimeChange}
                            placeholder={["公告开始时间", "公告结束时间"]}
                            format={"YYYY-MM-DD"}
                        />
                    </Form.Item>
                    <Form.Item  >
                        <div style={{ border: "1px solid #d9d9d9" }}>

                            <BraftEditor
                                controls={controls}
                                value={content}
                                onChange={(editorState) => { setContent(editorState) }}
                                extendControls={extendControlsContent}
                            />

                        </div>
                    </Form.Item>
                </Form>

            </Modal>
            <Modal open={showInfo} title="公告详情" width="1300px" onCancel={infoCancel} onOk={infoCancel}>
                <Descriptions bordered size={'middle'} >
                    <Descriptions.Item label="公告编号"><Tag >{noticeDetail.id}</Tag></Descriptions.Item>
                    <Descriptions.Item label="可见部门"><Tag color='red'>{noticeDetail.isAll == "true" ? "全部" : noticeDetail.specialDno}</Tag></Descriptions.Item>
                    <Descriptions.Item label="可见小组"><Tag color='red'>{noticeDetail.isAll == "true" ? "全部" : noticeDetail.specialDeptId}</Tag></Descriptions.Item>
                    <Descriptions.Item label="公告主题"><Tag color='red'>{noticeDetail.thyme}</Tag></Descriptions.Item>
                    <Descriptions.Item label="发布者"><Tag >{noticeDetail.postMan}</Tag></Descriptions.Item>
                    <Descriptions.Item label="发布时间"><Tag >{noticeDetail.postTime}</Tag></Descriptions.Item>
                    <Descriptions.Item label="公告起止"><Tag color="red">{noticeDetail.startTime}---{noticeDetail.endTime}</Tag></Descriptions.Item>
                </Descriptions>
                <br />
                <div style={{ float: "right" }}>
                    <Popconfirm
                        title="是否要删除该公告?"
                        onConfirm={confirmDelete}
                        okText="删除"
                        cancelText="取消"
                    >
                        <Button type="primary" danger >删除</Button>
                    </Popconfirm>
                </div>

                <Card title="公告内容" style={{ marginTop: "60px" }}>
                    <div dangerouslySetInnerHTML={{ __html: noticeDetail.content }}></div>
                </Card>
            </Modal>
        </div>
    )

}

export default NoticView