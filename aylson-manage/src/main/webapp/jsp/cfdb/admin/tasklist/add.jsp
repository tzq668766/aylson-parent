<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/plugs/kindeditor/kindeditor-4.1.10/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/plugs/kindeditor/kindeditor-4.1.10/plugins/code/prettify.css" />
<script charset="utf-8" src="<%=request.getContextPath()%>/resources/plugs/kindeditor/kindeditor-4.1.10/kindeditor.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/resources/plugs/kindeditor/kindeditor-4.1.10/lang/zh_CN.js"></script>
<style>
.param_th{
text-align:center!important;
font-size:14px;
padding:5px;
}
.param_td_oper{
	text-align:center!important;
}
.imgItem_td_1{
	width:60px;
	height:100px;
	padding:2px;
	margin:2px;
}
.imgItem_td_1 img{
	width:60px;
}
.basic_td{
text-align:left!important;
}
</style>
<div align="center" >
	<div class="easyui-tabs" id="tabActivity" style="width:100%">
		 <div title="任务配置" style="padding:10px;text-align:center">
		 	<form id="tasklistConfigForm" method="post">
				<table class="tableForm" style="width:99%;">
					<tr>
						<th>任务名称：</th>
						<td colspan="3" style="text-align:left">
							<input name="taskName" value="${tasklistVo.taskName}" data-options="required:true"
								class="easyui-textbox"
								style="width:95%; text-align:left"/>
						</td>
					</tr>
					<tr>
						<th>任务logo url地址：</th>
						<td colspan="3" style="text-align:left">
							<input name="logoUrl" value="${tasklistVo.logoUrl}" data-options="required:true"
								class="easyui-textbox"
								style="width:95%; text-align:left"/>
						</td>
					</tr>
					<tr>
						<th>任务标签：</th>
						<td colspan="3" style="text-align:left">
							<input name="taskTag" value="${tasklistVo.taskTag}"
								class="easyui-textbox" data-options="required:true"
								style="width:95%; text-align:left; "/>
						</td>
					</tr>
					<tr>
						<th>任务剩余数量：</th>
						<td colspan="3" style="text-align:left">
							<input name="amount" value="${tasklistVo.amount}"
								class="easyui-numberbox" data-options="required:true"
								style="width:95%; text-align:left; "/>
						</td>
					</tr>
					<tr>
						<th>任务收益金额：</th>
						<td colspan="3" style="text-align:left">
							<input name="income" value="${tasklistVo.income}"
								class="easyui-numberbox" data-options="required:true"
								style="width:95%; text-align:left; "/>
						</td>
					</tr>
					<tr>
						<th>排序编号：</th>
						<td colspan="3" style="text-align:left">
							<input name="orderNo" value="${tasklistVo.orderNo}"
								class="easyui-numberbox" data-options="required:true"
								style="width:95%; text-align:left; "/>
						</td>
					</tr>
					<tr>
						<th>跳转url地址：</th>
						<td colspan="3" style="text-align:left">
							<input name="goUrl" value="${tasklistVo.goUrl}"
								class="easyui-textbox" data-options="required:true"
								style="width:95%; text-align:left; "/>
						</td>
					</tr>
				</table>
				<input name="taskId" type="hidden" value="${tasklistVo.taskId}"/>
			</form>
		</div>
	</div> 
</div>