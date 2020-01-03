<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="../common/header.jsp"%>

</head>
<body>
	<script type="text/javascript">
		function go(pageNo) {

			document.getElementById("currentPage").value = pageNo;
			document.forms[0].submit();
		}
	</script>
	<div class="container " style="margin-top: 20px">
		<%@include file="../common/top.jsp"%>
		<div class="row">
			<div class="col-sm-3">
				<%@include file="../common/menu.jsp"%>
			</div>
			<div class="col-sm-9">
				<div class="row">
					<div class="col-sm-12">
						<h1 class="page-head-line">商品管理</h1>
					</div>
				</div>
				<!--高级查询--->
				<form class="form-inline" id="searchForm" action="product"
					method="post">
					<!-- <input type="hidden" name="currentPage" id="currentPage" value="1"> -->
					<a href="product?cmd=input" class="btn btn-success">添加</a>
					<br />
					<br />
					关键字
					<input name="keyWord" class="form-control" value="${qo.keyWord}"
						placeholder="名称/品牌" style="width: 150px;" />
					最低售价
					<input name="minSalePrice" class="form-control"
						value="${qo.minSalePrice}" placeholder="最低售价"
						style="width: 150px;" />
					最高售价
					<input name="minSalePrice" class="form-control"
						value="${qo.minSalePrice}" placeholder="最高售价"
						style="width: 150px;" />
					<input type="submit" class="btn btn-success" value="查询" />
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>序号</th>
								<th>商品名称</th>
								<th>商品类别</th>
								<th>商品售价</th>
								<th>供应商</th>
								<th>品牌</th>
								<th>商品折扣</th>
								<th>商品成本</th>
								<th>操作</th>
							</tr>
						</thead>
						<c:forEach items="${result.result}" var="ele" varStatus="vs">
							<tr>
								<td>${vs.count}</td>
								<td>${ele.productName}</td>
								<td>${ele.dirId}</td>
								<td>${ele.salePrice}</td>
								<td>${ele.supplier}</td>
								<td>${ele.brand}</td>
								<td>${ele.cutoff}</td>
								<td>${ele.costPrice}</td>
								<td>
									<a class="btn btn-info btn-xs"
										href="product?cmd=input&id=${ele.id}">
										<span class="glyphicon glyphicon-pencil"></span>
										编辑
									</a>
									<a href="product?cmd=delete" class="btn btn-danger btn-xs">
										<span class="glyphicon glyphicon-trash"></span>
										删除
									</a>
								</td>
							</tr>
						</c:forEach>
					</table>
					<nav aria-label="Page navigation">
						<ul class="pagination pagination-lg">
							<li>
								<a href="#" onclick="go(1);" aria-label="Previous">
									<span aria-hidden="true">首页</span>
								</a>
							</li>
							<li>
								<a href="#" onclick="go(${result.prevPage});"
									aria-label="Previous">
									<span aria-hidden="true">上一页</span>
								</a>
							</li>
							<c:forEach begin="1" end="${result.totalPage}" var="page">

								<li class="${qo.currentPage==page ? 'active':'' }">
									<a href="#" onclick="go(${page});">${page}</a>
								</li>
							</c:forEach>
							<li>
								<a href="#" onclick="go(${result.nextPage});" aria-label="Next">
									<span aria-hidden="true">下一页</span>
								</a>
							</li>
							<li>
								<a href="#" onclick="go(${result.totalPage});"
									aria-label="totalPage">
									<span aria-hidden="true">尾页</span>
								</a>
							</li>

						</ul>
						 <ul class="pagination pagination-sm">

							<li>
								<span>
								<input type="number" min="1" max="${result.totalPage}"
										name="currentPage" id="currentPage" style="width: 80px"
										class="form-control" value="${result.currentPage }"placeholder="跳转">
									<input type="submit" class="btn btn-default" value="Go" />
								</span>
							</li>
						</ul> 
					</nav>
				</form>
			</div>
		</div>
	</div>
</body>
</html>