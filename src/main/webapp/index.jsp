<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/15
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>小段购物平台</title>
</head>
<link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css">
<script src="public/js/jquery-1.11.3.min.js"></script>
<script src="public/bootstrap/js/bootstrap.min.js"></script>
<body>
<div  class="container">
    <!-- 导航栏 -->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Apple</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">Mac <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">ipad</a></li>
                    <li><a href="#">iPhone</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">List <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Mac</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">ipad</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">iPhone</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <%--<button type="submit" class="btn btn-default">Submit</button>--%>
                    <input name="登录" type="button" id="btn1" class="btn btn-default"
                           title="登录" value="登录"  onclick="location.href='index.html'" />
                </form>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>

<div class="container">
    <!-- 滚动播放图片 -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="resources/img/mac.jpg" alt="...">
                <div class="carousel-caption">
                    笔记本电脑
                </div>
            </div>
            <div class="item">
                <img src="resources/img/ipad.jpg" alt="...">
                <div class="carousel-caption">
                    平板电脑
                </div>
            </div>
            <div class="item">
                <img src="resources/img/iphone.jpg" alt="...">
                <div class="carousel-caption">
                    智能手机
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
</body>
</html>
