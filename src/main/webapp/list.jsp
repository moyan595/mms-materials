<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查询浏览</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css"/>

</head>
<body>


<div class="container">

    <div style="height:10px"></div>
    <form class="form-inline" action="${pageContext.request.contextPath }/Servlet?method=query" method="post">
        <table>
            <div class="form-group">
                <label for="exampleInputName2">物料编码</label>
                <input type="text" class="form-control" name="m_coding" placeholder="请输入要查询得物料编码">
            </div>
            <div class="form-group">
                <label for="exampleInputName2">物料名称</label>
                <input type="text" class="form-control" name="m_name" placeholder="请输入要查询的物料名称">
            </div>
            <div class="form-group">
                <label for="exampleInputName2">物料仓库</label>
                <input type="text" class="form-control" name="s_name" placeholder="请输入要查物料库存名称">
            </div>
            <button id="send" type="submit" class="btn btn-default">搜索</button>
            <button id="clean" type="button" class="btn btn-default">清空</button>
        </table>
    </form>


    <h1>
        <hr style="border: 3px solid red">
    </h1>
    <div class="row">
        <div class="col-md-12">
            <a href="${pageContext.request.contextPath }/Servlet?method=dictionary">
                <button type="button" class="btn btn-success">添加</button>
            </a>

            <a
                    id="updateb">
                <button type="button" class="btn btn-success"> 修改</button>
            </a>

            <a
                    id="deleteb">
                <button type="button" class="btn btn-danger"> 删除</button>
            </a>

            <a
                    id="statusb1">
                <button type="button" class="btn btn-success">启用</button>
            </a>

            <a
                    id="statusb0">
                <button type="button" class="btn btn-warning">停用</button>
            </a>
        </div>
    </div>
    <br>
    <div style="height: 10px"></div>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered table-striped">
                <tr>
                    <th>选择</th>
                    <th>物料编码</th>
                    <th>物料名称</th>
                    <th>物料类别</th>
                    <th>规格</th>
                    <th>单位</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${requestScope.ListPage}" var="ListPage">
                    <tr>
                        <td><input name="m_id" type="checkbox" value="${ListPage.materials_coding }"/></td>
                        <td>${ListPage.materials_coding }</td>
                        <td>${ListPage.materials_name }</td>
                        <td>${ListPage.type_name}</td>
                        <td>${ListPage.materials_specification }</td>
                        <td>${ListPage.unit_name}</td>
                        <td id="status">${ListPage.status_coding}</td>
                        <td>
                            <a type="button"
                               href="${pageContext.request.contextPath }/Servlet?method=update&m_coding=${ListPage.materials_coding }">
                                <button class="btn btn-primary stockBtn">修改</button>
                            </a>|
                            <button href="${pageContext.request.contextPath }/Servlet?method=listwarehouse&m_id=${ListPage.materials_coding }"
                                    class="btn btn-primary stockBtn" data-toggle="modal"
                                    data-target="#myModal">查看库存
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header"></div>
                <div class="modal-body"></div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {


            $("#myModal").on("hidden.bs.modal", function () {
                $(this).removeData("bs.modal");
            });

            //批量删除
            $("#deleteb").click(function () {
                //定义一个数组
                var m_coding = [];
                //获取复选框选中的物料编码
                var $deletem = $(":checkbox[name=m_id]:checked");
                if ($deletem != null && $deletem.length > 0) {
                    if (confirm("确认要删除吗?")) {
                        $deletem.each(function () {
                            var value = $(this).val();
                            //将m_id的值添加到数组中
                            m_coding.push(value);
                        });
                        //删除
                        $("#deleteb").attr("href", "${pageContext.request.contextPath}/Servlet?method=delete&m_coding=" + m_coding.join(","));
                        return true;
                    }
                } else {
                    alert("请至少选择一项进行操作!");
                }

                return false;
            })


            $("#updateb").click(function () {
                //定义一个数组包装复选框
                var m_coding = [];
                //获取修改复选框的数量
                var $updatem = $(":checkbox[name=m_id]:checked");
                if ($updatem != null && $updatem.length >= 1) {
                    if (confirm("确认要修改么")) {
                        $updatem.each(function () {
                            var value = $(this).val();
                            m_coding.push(value);
                        });
                        $("#updateb").attr("href", "${pageContext.request.contextPath}/Servlet?method=update&m_coding=" + m_coding.join(","));
                    }
                } else {
                    alert("最少选择一项，每次只能修改一项");
                }
            })


            $("#statusb0").click(function () {
                //定义一个数组包装复选框
                var m_coding = [];
                //获取修改复选框的数量
                var $statusb0 = $(":checkbox[name=m_id]:checked");
                if ($statusb0 != null && $statusb0.length > 0) {
                    if (confirm("确认要停用物料么")) {
                        $statusb0.each(function () {
                            var value = $(this).val();
                            m_coding.push(value);
                        });
                        $("#statusb0").attr("href", "${pageContext.request.contextPath}/Servlet?method=statust&m_coding=" + m_coding.join(","));
                    }
                } else {
                    alert("最少选择一项");
                }
            })


            $("#statusb1").click(function () {
                //定义一个数组包装复选框
                var m_coding = [];
                //获取修改复选框的数量
                var $statusb1 = $(":checkbox[name=m_id]:checked");
                if ($statusb1 != null && $statusb1.length > 0) {
                    if (confirm("确认要启用物料么")) {
                        $statusb1.each(function () {
                            var value = $(this).val();
                            m_coding.push(value);
                        });
                        $("#statusb1").attr("href", "${pageContext.request.contextPath}/Servlet?method=statusp&m_coding=" + m_coding.join(","));
                    }
                } else {
                    alert("最少选择一项");
                }
            })

        });

    </script>

</div>
</body>
</html>