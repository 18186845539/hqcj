<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/monthtotal/list.js"></script>
	<div class="m-b-md">
		<form class="form-inline" role="form" id="searchForm"
			name="searchForm">
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">车牌号:</span></label> <input
					class="input-medium ui-autocomplete-input" id="cplateid"
					name="receiptFormMap.cplateid">
			</div>
			<a href="javascript:void(0)" class="btn btn-default" id="search">查询</a>
		</form>
	</div>
	<div class="table-responsive">
		<div id="paging" class="pagclass"></div>
	</div>
