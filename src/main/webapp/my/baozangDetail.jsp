<%@ include file="../common/header.jsp" %>


<style>
    body, button, input, select, textarea, h1, h2, h3, h4, h5, h6 {
        font-family: "Helvetica Neue", Helvetica, Arial, "Hiragino Sans GB", "Hiragino Sans GB W3", "Microsoft YaHei UI", "Microsoft YaHei", "WenQuanYi Micro Hei", sans-serif;
    }

    body {
        background-color: white;
    }

    .main-image-logo {
        position: absolute;
        left: 30px;
        top: 15px;
        padding-top: 3px;
    }

    .main-baozang {
        position: absolute;
        right: 180px;
        top: 15px;
        font-size: 18px;
        color: white;
        padding-top: 3px;
        font-weight: bold;
    }

    .main-baozang:hover {
        background-color: #4b90d1;
        text-decoration: none;
        opacity: 0.9;
    }

    .main-myplace {
        top: 15px;
        position: absolute;
        right: 85px;
        font-size: 18px;
        color: white;
        font-weight: bold;
        padding-top: 3px;
    }

    .main-myplace:hover {
        background-color: #4b90d1;
        text-decoration: none;
        opacity: 0.9;
    }

    .main-image-0 {
        padding-top: 3px;
        padding-left: 3px;
        padding-right: 3px;
    }

    .main-nav-bg {
        height: 65px;
        width: 1280px;
        background-color: white;
        margin-left: 3px;
    }

    .main-nav {
        left: 35px;
        position: relative;
        top: -30px;
        font-size: 16px;
        color: #333333;
        width: 1000px;
    }

    .main-form-bottom-bg {
        height: 35px;
        width: 1280px;
        background-color: white;
        margin-left: 3px;
        float: left;
    }

    .main-body {
        float: left;
        left: 30px;
        position: relative;
        top: -30px;
    }

    #baozang-content {
        margin-top: 30px;
        margin-bottom: 20px;
    }

    .baozang {
        margin: 0px;
        padding: 0px;
    }

    .header {
        height: 200px;
        width: 1345px;
    }

    .search-span {
        position: absolute;
        top: 100px;
        left: 400px;
    }

    .search-input {
        font-size: 16px;
        color: #333;
        width: 460px;
        height: 40px;
        background-color: #f5f5f5;
        border: 0px;
        margin: 0px;
        padding: 0px;
    }

    .search-btn {
        background-color: #2177c8;
        font-size: 18px;
        font-weight: bold;
        color: #ffffff;
        float: right;
        width: 80px;
        height: 40px;
        border-radius: 0px;
        border: 0px;
        margin: 0px;
        padding: 0px;
    }

    .search-btn:hover {
        background-color: #4b90d1;
    }

    .main-image-1 {
        float: left;

    }
</style>
</head>
<body>

<a class="main-image-logo">
    <img class="img-responsive" alt="" src="../assets/img/logo.png">
</a>
<%@ include file="../common/common.jsp" %>
	
	<span class="search-span">
			<input id="kw" name="wd" class="search-input" placeholder="请输入关键词" maxlength="255" autocomplete="off">
			<input type="submit" id="su" value="搜索" class="btn search-btn">
	</span>

<div class="main-image-0">
    <img alt="" class="header" src="../assets/img/header-search.png">
</div>

<div class="main-nav-bg"></div>
<div class="main-nav"><img alt="" src="../assets/img/location.png">&nbsp;您当前的位置：
		<span class="breadcrumb" style="background-color:white;padding:0px">
	  		<li><a href="../index.html">首页</a></li>
	  		<li><a href="baozang.html">数据宝藏</a></li>
	  		<li>宝藏下载</li>
		</span>
</div>

<div class="main-body">
    <div id="baozang-content" class="container">
        <div class="row">
            <div class="col-md-2">
                <div style="border-bottom:5px solid #2177c8;padding-bottom: 5px;margin-bottom: 20px;">数据宝藏</div>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active" role="presentation"><a href="#" name="重庆数据">重庆数据</a></li>
                    <li role="presentation"><a href="#" name="山东数据">山东数据</a></li>
                    <li role="presentation"><a href="#" name="IMEI库">IMEI库</a></li>
                </ul>
            </div>
            <div class="col-md-10">
                <div>重庆数据</div>
                <div class="row">
                    <div class="col-md-4">
                        <img src="../assets/img/im2.png">
                    </div>
                    <div class="col-md-8">
                        描述
                    </div>
                </div>
                <div>
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                                                                  data-toggle="tab">文件格式</a></li>
                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">数据口径</a>
                        </li>
                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab"
                                                   data-toggle="tab">数据样例</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home">
                            <div class="row">
                                <div class="col-md-4">文件格式</div>
                                <div class="col-md-8">excel</div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="profile">22</div>
                        <div role="tabpanel" class="tab-pane" id="messages">33</div>
                    </div>
                </div>
                <br>

                <div>
                    数据下载
                </div>
                <div>

                </div>
            </div>
        </div>
    </div>
</div>

<div class="main-form-bottom-bg"></div>
<div class="main-image-1">
    <img alt="" src="../assets/img/6.png">
</div>
<div class="container main-image-1">
    <footer>
        <div align="center">
            <p>©2014 版权所有 亚信集团股份有限公司 京ICP备11005544号-15 京公网安备110108007119号</p>
        </div>
    </footer>
</div>

</body>
<script id="baozang-item" type="text/x-jquery-tmpl">
		{{each(i,data) datas}}
			<div style="margin-bottom:10px" class="col-xs-6 col-md-6 item-image"><a href="./baozangDetail.html?id=${data.id}" class="col-xs-5 col-md-5"><img class="btn btn-link baozang" name="${data.id}" src="../assets/img/ny_03.png"></a><span class="col-xs-7 col-md-7">${data.id}<br>${data.desc}</span></div>
		{{/each}}

</script>
<script type="text/javascript">
    $(function () {
        $('#myTabs a').click(function (e) {
            e.preventDefault()
            $(this).tab('show')
        });
    });
</script>
</html>
