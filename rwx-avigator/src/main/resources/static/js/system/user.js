var prefix = '/sys/user';
var dataTable;

$(function () {
    //关闭模态对话框时
    $('.data-dialog').on('hide.bs.modal', function () {
        document.getElementById('data-form').reset();
        $("#data-form").data('validator').resetForm();
    });

    //定义表格按钮事件
    window.actionEvents = {
        'click .add': function(e, value, row, index) {
            $('#dialog-title').text('新增菜单');
            $('#parentId').val(row['menuId']);
        },
        'click .edit': function(e, value, row, index) {
            $('#dialog-title').text('更新菜单');
            $('#menuId').val(row['menuId']);
            $('#parentId').val(row['parentId']);
            $('#menuName').val(row['menuName']);
            $('#icon').val(row['icon']);
            $('#url').val(row['url']);
            $('#perms').val(row['perms']);
            $('input[type=radio][name="type"][value='+row['type']+']').prop('checked', true);
        },
        'click .remove': function(e, value, row, index) {
            remove(row['menuId']);
        }
    };

    //加载表格数据
    dataTable = $('#data-table').bootstrapTable(
        {
            dataField: 'data',
            type: 'GET',
            url: prefix + '/list',
            dataType: 'json',
            // pagination: true,
            // pageList: [ 5, 10, 20],
            // pageSize: 5,
            // pageNumber: 1,
            // sidePagination : "server", // 设置在哪里进行分页，可选值为"client" 或者 "server"
            // queryParams: function(params) {
            //     return {
            //         limit: params.limit,
            //         offset: params.offset
            //     };
            // },
            columns: [
                {
                    title: '用户名',
                    field: 'username',
                    align: 'center',
                    width: '20%'
                },
                {
                    title: '昵称',
                    field: 'name',
                    align: 'center',
                    width : '15'
                },
                {
                    title: '头像',
                    field: 'picUrl',
                    align: 'center',
                    width : '25%',
                    formatter: 'iconFormatter'
                },
                {
                    title: '邮件',
                    field: 'email',
                    align: 'center',
                    width : '15'
                },
                {
                    title: '手机',
                    field: 'mobile',
                    align: 'center',
                    width : '15%'
                },
                {
                    title: '操作',
                    align: 'center',
                    width : '10%',
                    events : actionEvents,
                    formatter: 'actionFormatter'
                }]
        });

    // 表单验证提交
    var icon = "<i class='fa fa-times-circle'></i> ";
    $("#data-form").validate({
        rules : {
            username: { required: true }
        },
        messages: {
            username: { required: icon + '请输入菜单名称' }
        },
        submitHandler:function(){
            $.ajax({
                cache: true,
                type: 'POST',
                url: prefix + ($('#dialog-title').text() === '新增菜单' ? '/add' : '/update'),
                dataType: 'json',
                data: $('#data-form').serialize(),
                async: false,
                error: function(request, textStatus, errorThrown) {
                    PNotify.error({
                        title: '失败',
                        text: textStatus,
                        styling: 'bootstrap3'
                    });
                },
                success : function(data) {
                    $('.data-dialog').modal('hide');
                    if (data.code === 0) {
                        dataTable.bootstrapTable('refresh');
                        PNotify.success({
                            title: '成功',
                            text: data.message,
                            styling: 'bootstrap3'
                        });
                    } else {
                        PNotify.error({
                            title: '失败',
                            text: data.message,
                            styling: 'bootstrap3'
                        });
                    }
                }
            });
        }
    });
});

// 格式化图标
function iconFormatter(value, row, index) {
    return value == null ? '' : '<span class="user-profile"><img src="' + value + '"/></span>';
}
// 格式化按钮
function actionFormatter(value, row, index) {
    return [
        '<button type="button" class="add btn btn-xs btn-primary" data-toggle="modal" data-target=".data-dialog"><i class="fa fa-plus" ></i></button>',
        '<button type="button" class="edit btn btn-xs btn-warning" data-toggle="modal" data-target=".data-dialog"><i class="fa fa-pencil-square-o" ></i></button>',
        '<button type="button" class="remove btn btn-xs btn-danger"><i class="fa fa-trash-o" ></i></button>'
    ].join('');

}
// 格式化类型
function typeFormatter(value, row, index) {
    if (value === 0) {  return '<span class="label label-primary">目录</span>';  }
    else if (value === 1) {  return '<span class="label label-success">菜单</span>'; }
    else if (value === 2) {  return '<span class="label label-warning">按钮</span>'; }
    else return '-';
}

function remove(id) {
    var notice = PNotify.notice({
        title: '删除',
        text: '确定要删除吗？',
        icon: 'fa fa-question-circle',
        styling: 'bootstrap3',
        hide: false,
        stack: { 'modal': true, 'overlayClose': true },
        modules: {
            Confirm: {
                confirm: true
            },
            Buttons: {
                closer: false,
                sticker: false
            },
            History: {
                history: false
            }
        }
    });

    notice.on('pnotify.confirm', function () {
        $.ajax({
            url: prefix + "/remove",
            type: 'POST',
            dataType : 'json',
            data: {
                'id': id
            },
            error: function(request, textStatus, errorThrown) {
                PNotify.error({
                    title: '失败',
                    text: textStatus,
                    styling: 'bootstrap3'
                });
            },
            success: function (data) {
                if (data.code === 0) {
                    dataTable.bootstrapTable('refresh');
                    PNotify.success({
                        title: '成功',
                        text: data.message,
                        styling: 'bootstrap3'
                    });
                } else {
                    PNotify.error({
                        title: '失败',
                        text: data.message,
                        styling: 'bootstrap3'
                    });
                }
            }
        });
    });
}