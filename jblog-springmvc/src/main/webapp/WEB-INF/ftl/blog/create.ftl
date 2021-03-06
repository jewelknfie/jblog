<#include "/common/header.ftl" >
<link rel="stylesheet" type="text/css" href="${rc.contextPath}/assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css">
<!-- BEGIN PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title">
            发表文章
        </h3>
        <ul class="page-breadcrumb breadcrumb">
            <li>
                <i class="fa fa-home"></i>
                <a href="/">首页</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="#">文章管理</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li><a href="#">发表文章</a></li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>
<!-- END PAGE HEADER-->
<#if errorMsg?? >
<div class="alert alert-danger">
    <button class="close" data-close="alert"></button>
    <span> ${errorMsg}</span>
</div>
</#if>
<div class="row">
    <div class="col-md-12 ">

        <!-- BEGIN SAMPLE FORM PORTLET-->
        <div class="portlet box green ">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i> 发表文章
                </div>
                <div class="tools">
                    <a href="" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body form">
                <form class="form-horizontal"  method="post" role="form" >
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">标题</label>

                            <div class="col-md-9">
                                <input type="text" class="form-control" name="title" <#if failBean??>value="${failBean.title}"</#if> placeholder="请输入标题..">
                                <span class="help-block">标题长度请控制在10个字以内.</span>
                            </div>
                        </div>
                        <#--<div class="form-group">-->
                            <#--<label class="col-md-3 control-label">分类</label>-->
                            <#--<div class="col-md-9">-->
                                <#--<select class="form-control" name="classification">-->
                                    <#--<option>美食</option>-->
                                    <#--<option>旅游</option>-->
                                    <#--<option>心情</option>-->
                                    <#--<option>家居</option>-->
                                    <#--<option>科技</option>-->
                                <#--</select>-->
                            <#--</div>-->
                        <#--</div>-->
                        <#--<div class="form-group">-->
                            <#--<label class="col-md-3 control-label">描述</label>-->

                            <#--<div class="col-md-9">-->
                                <#--<textarea class="form-control" name="description" rows="3"></textarea>-->
                            <#--</div>-->
                        <#--</div>-->
                        <div class="form-group">
                            <label class="col-md-3 control-label">图文消息封面</label>

                            <div class="col-md-9">
                        <span class="btn green fileinput-button">
                            <i class="fa fa-plus"></i>
                            <span>上传</span>
                            <input id="fileupload" type="file" name="files" >
						</span>

                                <div id="progress" style="height: 18px;">
                                    <div class="progress-bar progress-bar-info" style="width: 0%;"></div>
                                </div>
                                尺寸建议720像素*400像素
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">详情</label>

                            <div class="col-md-9">
                                <textarea class="form-control" name="content" rows="15"><#if failBean??>${failBean.content}</#if></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="col-md-offset-3 col-md-9">
                            <button type="submit" class="btn green">提交</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- END SAMPLE FORM PORTLET-->
    </div>
    <#--<div class="col-md-4">-->
        <#--<style type="text/css">-->
            <#--.default-tip{-->
                <#--color: #c0c0c0;-->
                <#--line-height: 150px;-->
                <#--border: 1px solid #b2b8bd;-->
                <#--width: 100%;-->
                <#--text-align: center;-->
                <#--background-color:#b2b8bd ;-->
                <#--color:#FFF;-->

            <#--}-->
            <#--.msg-item-wrapper{-->
                <#--border-radius:5px !important;-->
                <#--border:1px solid #aaa;-->
                <#--box-shadow: 0px 0px 2px #AAA;-->
                <#--position: relative;-->
            <#--}-->
        <#--</style>-->
        <#--<div class="msg-item-wrapper" id="appmsg" style="min-height:358px;max-height: 358px;">-->
            <#--<div id="appmsgItem1" class="">-->
                <#--<h4><div class="" style="padding:10px;padding-bottom:0px;white-space: normal;text-overflow: ellipsis;height:28px;width:370px;max-width: 370px;overflow: hidden;font-weight: normal;">标题</div></h4>-->
                <#--<div class="" style="max-height:190px;overflow: hidden;">-->
                    <#--<img src="" class="" data-src="" style="width:100%;padding-top:10px;">-->
                    <#--<div class="default-tip">-->
                        <#--封面图片-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="" style="padding:10px;word-wrap:break-word;text-overflow: ellipsis;height:78px;overflow: hidden;"></div>-->
                <#--<div class="" style="width:96%;padding:2%;border-top:1px solid #b2b8bd;position: absolute;bottom:2px;line-height:20px">-->
                    <#--阅读全文 <span style="float:right">&gt;</span>-->
                    <#--<div class="clearfix"></div>-->
                <#--</div></div>-->
        <#--</div>-->
    <#--</div>-->
</div>
<script src="${rc.contextPath}/assets/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="${rc.contextPath}/assets/plugins/jquery-file-upload/js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="${rc.contextPath}/assets/plugins/jquery-file-upload/js/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="${rc.contextPath}/assets/plugins/jquery-file-upload/js/jquery.fileupload-process.js"></script>


<script type="text/javascript">
    $(function () {
        $('#fileupload').fileupload({
            /* ... */
            url: '/upload',
            dataType: 'json',
            maxFileSize: 5*1000*1000,
            acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
            dataType: 'json',
            disableImageResize: /Android(?!.*Chrome)|Opera/
                    .test(window.navigator && navigator.userAgent),
            imageMaxWidth: 720,
            imageMaxHeight: 400,
            progressall: function (e, data) {
                var progress = parseInt(data.loaded / data.total * 100, 10);
                $('#progress .bar').css(
                        'width',
                                progress + '%'
                );
            },
            done: function (e, data) {
                $.each(data.result, function (index, file) {
                    $("#appmsgItem1 img").attr('src', file[0].url);
                    $('input[name="picname"]').remove();
                    $('#fileupload').after($('<input type="hidden" name="picname" value="' + file[0].name + '" />'));
                });
            }
        });

        $("input[name='title']").keyup(function(){
            var title = $("input[name='title']").val();
            if (title == '') {
                title = '标题';
            }
            $("#appmsgItem1 div:first").html(title);
        });

        $("textarea[name='description']").keyup(function(){
            var str = $("textarea[name='description']").val();
            $("#appmsgItem1 div:eq(3)").html(str);
        });
    });

</script>

<#include "/common/footer.ftl" >
