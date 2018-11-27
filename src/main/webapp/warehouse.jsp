<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>库存</title>
</head>
<body>

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">查看物料库存</h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <tr>
                        <th>物料编码</th>
                        <th>仓库名</th>
                        <th>仓库警戒值</th>
                        <th>仓库库存</th>
                        <th>仓库备注</th>
                    </tr>
                    <c:forEach items="${requestScope.mhse}" var="mhse">
                        <tr>
                            <td>${mhse.materials_coding}</td>
                            <td>${mhse.store_name}</td>
                            <td>${mhse.warehouse_warningvalue}</td>
                            <td>${mhse.warehouse_stockquantity}</td>
                            <td>${mhse.warehouse_remark}</td>

                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>


<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css"/>

</body>
</html>