<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/insurance/edit.js"></script>
<style type="text/css">
.col-sm-3 {
	width: 21%;
	float: left;
	text-align:right;
}

.col-sm-9 {
	width: 79%;
	float: left;
	text-align:right;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/insurance/editEntity.shtml">
		<input type="hidden" class="form-control checkacc" value="${insurance.id}"
			name="insuranceFormMap.id" id="id">
				<input type="hidden" class="form-control checkacc" value="${insurance.cid}"
			name="insuranceFormMap.cid" id="cid">
		<section class="panel panel-default">
			<div class="panel-body">
			
			<div class="form-group">
				<label class="col-sm-3 control-label">车牌照号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" readonly="readonly"
						name="insuranceFormMap.ilicenceplateid" 
						id="ilicenceplateid" value="${insurance.cplateid}">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">保险编号</label>
				<div class="col-sm-9">
					<!-- <select id="cplateid" name="insuranceFormMap.cplateid" class="form-control checkacc"></select> -->
					<input type="text" class="form-control checkacc" readonly="readonly"
						value="${insurance.iinsurancenumber}" name="insuranceFormMap.iinsurancenumber" id="iinsurancenumber">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">交强险单号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						readonly="readonly" name="insuranceFormMap.iStronginsuranceid" 
						id="iStronginsuranceid" value="${insurance.iStronginsuranceid}">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">商业险单号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="insuranceFormMap.iCommercialinsuranceid"
						 id="iCommercialinsuranceid" value="${insurance.iCommercialinsuranceid}">
				</div>
			</div>
			
						<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">承运人险单号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="insuranceFormMap.iCarrierinsuranceid" id="iCarrierinsuranceid" value="${insurance.iCarrierinsuranceid}">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">保险公司</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="insuranceFormMap.iinsurancecompany" id="iinsurancecompany" value="${insurance.iinsurancecompany}">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">保险类型</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="insuranceFormMap.iinsurancetype" id="iinsurancetype" value="${insurance.iinsurancetype}">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">投保金额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="insuranceFormMap.iinsurancesum" id="iinsurancesum" value="${insurance.iinsurancesum}">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">开始时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="insuranceFormMap.iinsurancestarttime" id="iinsurancestarttime" value="${insurance.iinsurancestarttime}">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">截止时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="insuranceFormMap.iinsuranceendtime" id="iinsuranceendtime" value="${insurance.iinsuranceendtime}">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">保险方案</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="insuranceFormMap.iInsurancescheme" id="iInsurancescheme" value="${insurance.iInsurancescheme}">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">备注</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="insuranceFormMap.iremark" id="iremark" value="${insurance.iremark}">
				</div>
			</div>
			</div>
			 
	</section>
	</form>
</body>
</html>