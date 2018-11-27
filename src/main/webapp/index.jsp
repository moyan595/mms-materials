<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>物料管理系统</title>
</head>
<body>
    <h1>物料管理系统</h1>
    <a type="button"  href="${pageContext.request.contextPath }/Servlet?method=dictionary" ><button>添加</button></a>
    <a type="button"  href="${pageContext.request.contextPath }/Servlet?method=ListPage" ><button>查看</button></a>
</body>
</html>