<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="../common/header.jsp"%>
</head>
<body>

<div class="container " style="margin-top: 20px">
    <%@include file="../common/top.jsp"%>
    <div class="row">
        <div class="col-sm-3">
            <%@include file="../common/menu.jsp"%>
        </div>
        <div class="col-sm-9">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="page-head-line">部门编辑</h1>
                </div>
            </div>
            <div class="row col-sm-10">
                <form class="form-horizontal" action="product?cmd=saveORupdate" method="post" id="editForm">
                    <input type="hidden"  name="id" value="${p.id}">
                    <div class="form-group">
                        <label for="productName" class="col-sm-2 control-label">商品名称：</label>
                        <div class="col-sm-6">
                        <input type="text" class="form-control" value="${p.productName}" name="productName"  placeholder="请输入商品名称">
                        </div>
                    </div>
                     <div class="form-group" >
                        <label for="salePrice" class="col-sm-2 control-label">商品售价：</label>
                        <div class="col-sm-6">
                        <input type="text" class="form-control" value="${p.salePrice}" name="salePrice"  placeholder="请输入商品售价">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="supplier" class="col-sm-2 control-label">供应商：</label>
                        <div class="col-sm-6">
                        <input type="text" class="form-control" value="${p.supplier}" name="supplier"  placeholder="请输入商品供应商">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="brand" class="col-sm-2 control-label">商品品牌：</label>
                        <div class="col-sm-6">
                        <input type="text" class="form-control" value="${p.brand}" name="brand"  placeholder="请输入商品品牌">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cutoff" class="col-sm-2 control-label">商品折扣：</label>
                        <div class="col-sm-6">
                        <input type="text" class="form-control" value="${p.cutoff}" name="cutoff"  placeholder="请输入商品商品折扣">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="costPrice" class="col-sm-2 control-label">商品成本：</label>
                        <div class="col-sm-6">
                        <input type="text" class="form-control" value="${p.costPrice}" name="costPrice"  placeholder="请输入商品成本">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="dirId" class="col-sm-2 control-label">商品类型：</label>
                        <div class="col-sm-6">
                        <input type="text" class="form-control" value="${p.dirId}" name="dirId"  placeholder="请输入部门编号">
                        </div>
                    </div>
                   
                    <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-6">
                            <button id="btn_submit" type="submit" class="btn btn-default">保存</button>
                            <button type="reset" class="btn btn-default">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>