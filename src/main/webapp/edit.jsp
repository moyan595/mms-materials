<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>编辑</title>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/css/bootstrap.min.css"/>
    <script type="text/javascript" href="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" href="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <script type="text/javascript" href="${pageContext.request.contextPath }/js/npm.js"></script>
</head>
<body>
<div class="container">
    <div style="height: 20px"></div>
    <form class="form-inline" action="${pageContext.request.contextPath }/Servlet?method=${
    requestScope.tab_materials.materials_coding == null ? "add" : "toUpdate" }" method="post">


        <%--<input type="hidden" name="materials_coding" value="${requestScope.tab_materials.materials_coding}"/>--%>
        <div class="form-group">
            <label for="exampleInputName2">物料编码:</label>
            <input type="text" class="form-control" name="materials_coding"
                   value="${requestScope.tab_materials.materials_coding}"/>
        </div>

        <div class="form-group">
            <label for="exampleInputName2">物料名称:</label>
            <input type="text" class="form-control" name="materials_name"
                   value="${requestScope.tab_materials.materials_name}"/>
        </div>

        <br><br>

        <div class="form-group">
            <label for="exampleInputName2">物料类别:</label>
            <select style="width: 195px; height: 33px" name="type_coding" class="form-control">

                <option>请选择一个物料分类</option>

                <c:forEach items="${requestScope.QueryType_Dictionary}" var="QueryType_Dictionary">
                    <option value="${QueryType_Dictionary.type_coding}"   <C:if
                            test="${QueryType_Dictionary.type_coding  == requestScope.tab_materials.type_coding}">
                        selected="selected" </C:if>  >${QueryType_Dictionary.type_name}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <label for="exampleInputName2">物料规格:</label>
            <input type="text" class="form-control" name="materials_specification"
                   value="${requestScope.tab_materials.materials_specification}"/>
        </div>

        <br><br>

        <div class="form-group">
            <label for="exampleInputName2">物料单位:</label>
            <select style="width: 195px; height: 33px" name="unit_coding" class="form-control">
                <c:forEach items="${requestScope.QueryUnit_Dictionary}" var="QueryUnit_Dictionary">
                    <option value="${QueryUnit_Dictionary.unit_coding}"
                            <C:if test="${QueryUnit_Dictionary.unit_coding == requestScope.tab_materials.unit_coding}">selected="selected"</C:if> >
                            ${QueryUnit_Dictionary.unit_name}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <label for="exampleInputName2">物料工序:</label>
            <input type="text" class="form-control" name="mmaterials_useprocess"
                   value="${requestScope.tab_materials.materials_useprocess}"/>
        </div>

        <br><br>

        <div class="form-group">
            <label for="exampleInputName2">物料备注:</label>
            <input type="text" class="form-control" name="materials_remark"
                   value="${requestScope.tab_materials.materials_remark}"/>
        </div>

        <div class="form-group">
            <label for="exampleInputName2">物料状态:</label>
            <select style="width: 100px; height: 33px" name="status_coding" class="form-control">
                <option value="0"
                        <C:if test="${requestScope.tab_materials.materials_status == 0}">selected="selected
"</C:if>  >使用中
                </option>
                <option value="1"
                        <C:if test="${requestScope.tab_materials.materials_status == 1}">selected="selected
"</C:if> >停用
                </option>
            </select>
        </div>

        <br><br>

        <div class="form-group">
            <label for="exampleInputName2">物料仓库信息</label>

            <br><br>

            <div class="row">
                <div class="col-md-12">
                    <table class="table table-bordered table-striped">

                        <button class="btn btn-primary" type="button" name="" value="">添加更多仓库</button>

                        <tr>
                            <th>仓库名称:</th>
                            <th>库存数量:</th>
                            <th>仓库警戒值:</th>
                            <th>备注信息:</th>
                        </tr>

                        <tr>
                            <td>
                                <select style="width: 195px; height: 33px" name="store_name" class="form-control">
                                    <c:forEach items="${requestScope.QueryStore_Dictionary}"
                                               var="QueryStore_Dictionary">
                                        <option value="${QueryStore_Dictionary.store_name}"
                                                <c:if test="${QueryStore_Dictionary.store_name ==
                                            requestScope.querywarehouse.store_name}">selected="selected"</c:if>
                                        > ${QueryStore_Dictionary.store_name} </option>
                                    </c:forEach>
                                </select>
                            </td>

                            <td>
                                <input type="text" class="form-control" name="warehouse_warningvalue"
                                       value="${requestScope.querywarehouse.warehouse_warningvalue}"/>
                            </td>

                            <td>
                                <input type="text" class="form-control" name="warehouse_stockquantity"
                                       value="${requestScope.querywarehouse.warehouse_stockquantity}"/>
                            </td>

                            <td>
                                <input type="text" class="form-control" name="warehouse_remark"
                                       value="${requestScope.querywarehouse.warehouse_remark}"/>
                            </td>

                        </tr>

                    </table>

                </div>

            </div>
            <br><br><br>
            <button type="submit" class="btn btn-default">提交</button>

    </form>
</div>

<script>

</script>
</body>
</html>