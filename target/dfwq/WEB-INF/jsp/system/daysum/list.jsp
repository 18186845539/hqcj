<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/daysum/list.js"></script>
	<div class="m-b-md">
		<form class="form-inline" role="form" id="searchForm"
			name="searchForm">
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">单据号:</span></label> <input
					class="input-medium ui-autocomplete-input" id="reredocumentid"
					name="receiptFormMap.reredocumentid">
			</div>
			<a href="javascript:void(0)" class="btn btn-default" id="search">查询</a>
			
			<br/>
			<br/>
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">总金额:</span></label>
					 <input class="input-medium ui-autocomplete-input" id="money" readonly="readonly">
			</div>
		</form>
	</div>
	<header class="panel-heading">
	<div class="doc-buttons">
		<c:forEach items="${res}" var="key">
			${key.description}
		</c:forEach>
	</div>
	</header>
	<div class="table-responsive">
		<div id="paging" class="pagclass"></div>
	</div>
