import { FC, useState, useEffect } from 'react'
import { SearchOutlined } from '@ant-design/icons'
import { Button, Card, Form, Input, Modal, Upload } from 'antd'
import { useForm } from 'antd/es/form/Form'
// 引入富文本编辑器组件
import BraftEditor from 'braft-editor'
// 引入编辑器样式
import 'braft-editor/dist/index.css'
import { ContentUtils } from 'braft-utils'
import { ImageUtils } from 'braft-finder'
import './index.less'

const NoticView: FC = () => {
    const [searchForm] = useForm()
    const [noticeForm] = useForm()
    const [showNotice, setShowNotice] = useState(false)
    // 富文本
    const [content, setContent] = useState(BraftEditor.createEditorState(null))
    //富选框参数
    const controls: any = ['undo', 'redo', 'separator',
        'font-size', 'line-height', 'letter-spacing', 'separator',
        'text-color', 'blod', 'italic', 'underline', 'strike-through', 'separator',
        'superscript', 'subscript', 'remove-styles', 'emoji', 'separator', 'text-indent', 'text-align', 'separator',
        'headings', 'list-ul', 'list-ol', 'blockquote', 'code', 'separator',
        'link', 'separator', 'hr', 'separator',
        'clear', 'separator',
    ]
    // 自定义上传
    const uploadHandler = (param: any) => {
        if (!param.file) {
            return false
        }

        setContent(ContentUtils.insertMedias(content, [{ type: 'IMAGE', url: URL.createObjectURL }]))
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
                    customRequest={uploadHandler}
                >
                    {/* 这里的按钮最好加上type="button"，以避免在表单容器中触发表单提交，用Antd的Button组件则无需如此 */}
                    <button type="button" className="control-item button upload-button" data-title="插入图片">
                        插入图片
                    </button>
                </Upload>
            )
        }
    ]

    const noticeCancel = () => {
        setShowNotice(false)
    }
    const confirmNotice = () => {

    }
    return (

        <div style={{ margin: "30px" }}>
            <Card>
                <Form form={searchForm} size="large" layout='inline'>
                    <Form.Item name="keyword" >
                        <Input placeholder='输入公告名或ID' />
                    </Form.Item>
                    <Button icon={<SearchOutlined />}>搜索</Button>
                    <Button style={{ marginLeft: "20px" }} danger icon={<SearchOutlined />} onClick={() => setShowNotice(true)}>发布新公告</Button>

                </Form>
                <br />

            </Card>
            <Modal open={showNotice} title="发布公告" closable onOk={confirmNotice} width="1300px" onCancel={noticeCancel}>
                <Form form={noticeForm} size="large"  >
                    <Form.Item name="thyme" label="公告主题"
                        wrapperCol={{ span: 6 }}>
                        <Input />
                    </Form.Item>
                    <Form.Item >
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
        </div>
    )

}

export default NoticView