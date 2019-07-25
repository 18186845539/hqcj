var pageii = null;
var grid = null;
$(function() {
	
	grid = lyGrid({
		pagId : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
		}, {
			colkey : "gkwx_WXMCh",
			name : "微信名称",
			isSort:true,
		}, {
			colkey : "gkwx_OpenId",
			name : "顾客OpenId",
			isSort:false,
		}, {
			colkey : "gk_XM",
			name : "顾客姓名"
		}, {
			colkey : "gk_XB",
			name : "顾客性别",
			width : '90px',
			isSort:true
		}, {
			colkey : "gk_SJHM",
			name : "手机号码",
			width : '90px'
		}, {
			colkey : "gk_glcs",
			name : "出生日期",
			isSort:true,
			renderData : function(rowindex,data, rowdata, column) {
				return new Date(data).format("yyyy-MM-dd hh:mm:ss");
			}
		}, {
			name : "操作",
			renderData : function( rowindex ,data, rowdata, colkeyn) {
				return "测试渲染函数222";
			}
		} ],
		jsonUrl : rootPath + '/gk/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#callback_test").click("click", function() {
		paging_callback();
	});
	$("#addAccount").click("click", function() {
		addAccount();
	});
	$("#editAccount").click("click", function() {
		editAccount();
	});
	$("#delAccount").click("click", function() {
		delAccount();
	});
	$("#permissions").click("click", function() {
		permissions();
	});
});
function paging_callback(){
	var parm = {
			pagId : 'paging_callback',
			l_column : [ {
				colkey : "id",
				name : "id",
			}, {
				colkey : "gkwx_WXMCh",
				name : "微信名称",
				isSort:true,
			}, {
				colkey : "gkwx_OpenId",
				name : "顾客OpenId",
				isSort:false,
			}, {
				colkey : "gk_XM",
				name : "顾客姓名"
			}, {
				colkey : "gk_XB",
				name : "顾客性别",
				width : '90px',
				isSort:true
			}, {
				colkey : "gk_SJHM",
				name : "手机号码",
				width : '90px'
			}, {
				colkey : "gk_glcs",
				name : "出生日期",
				isSort:true,
				renderData : function(rowindex,data, rowdata, column) {
					return new Date(data).format("yyyy-MM-dd hh:mm:ss");
				}
			}, {
				name : "操作",
				renderData : function( rowindex ,data, rowdata, colkeyn) {
					return "测试渲染函数";
				}
			} ],
			jsonUrl : rootPath + '/gk/findByPage.shtml',
			checkbox : true,
			serNumber : true
		}
	
	var grid_c=lyGrid(parm,function(c,d){
		//回调方法
		pageii = layer.open({
			title : "回调方法生成表格", 
			type : 1,
			area : [ "800px", "400px" ],
			content : $("#callback_div"),btn: ['确认', '取消']
		  	,yes: function(sum, layero){ //或者使用btn1
		  		layer.close(index);
			 },cancel: function(index){ //或者使用btn2
				 layer.close(index);
			 }
		});
	});
}
function editAccount() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑",
		type : 2,
		area : [ "600px", "80%" ],
		content : rootPath + '/user/editUI.shtml?id=' + cbox
	});
}
function addAccount() {
	pageii = layer.open({
		title : "新增",
		type : 2,
		area : [ "600px", "80%" ],
		content : rootPath + '/user/addUI.shtml'
	});
}
function delAccount() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/user/deleteEntity.shtml';
		var s = CommnUtil.ajax(url, {
			ids : cbox.join(",")
		}, "json");
		if (s == "success") {
			layer.msg('删除成功');
			grid.loadData();
		} else {
			layer.msg('删除失败');
		}
	});
}
function permissions() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("请选择一个对象！");
		return;
	}
	var url = rootPath + '/resources/permissions.shtml?userId='+cbox;
	pageii = layer.open({
		title : "分配权限",
		type : 2,
		area : [ "800px", "80%" ],
		content : url
	});
}