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
        top: 90px;
        left: 35px;
        position: absolute;
        font-size: 16px;
        color: #333333;
    }

    .main-form-bottom-bg {
        height: 35px;
        width: 1280px;
        background-color: white;
        margin-left: 3px;
    }

    .main-body {
        float: left;
        left: 30px;
        position: relative;
        top: -30px;
    }

    .body-title {
        font-size: 24px;
        color: #666666;
        margin-top: 30px;
        margin-bottom: 20px;
    }

    .baozangtab {
        width: 160px;
        font-size: 20px;
        color: #666666;
        background-color: #f5f5f5;
    }

    .baozangtab .active {
        color: #ffffff;
        background-color: #3dc6dd;
    }

    #baozang-content {
        margin-top: 30px;
        margin-bottom: 20px;
    }

    .item-image-hidden {
        position: relative;
        top: -40px;
        visibility: hidden;
    }

    #myModal .modal-content {
        height: 200px;
    }

    .uploadsubmit {
        left: -15px;
        position: relative;
        width: 380px;
    }
</style>
</head>
<body>

<a class="main-image-logo">
    <img class="img-responsive" alt="" src="../assets/img/logo.png">
</a>
<%@include file="../common/common.jsp" %>

<div class="main-image-0">
    <img alt="" src="../assets/img/header.png">
</div>

<div class="main-nav-bg"></div>
<div class="main-nav"><img alt="" src="../assets/img/location.png">&nbsp;您当前的位置：
		<span class="breadcrumb" style="background-color:white;padding:0px">
	  		<li><a href="../index.jsp">首页</a></li>
       		<li>我的地盘</li>
		</span>
</div>

<div class="main-body">
    <div>
        <div class="body-title">
            我的宝藏
        </div>
        <div>
            <ul class="nav nav-pills">
                <li class="baozangtab active" role="presentation"><a style="text-align:center;vertical-align:middle"
                                                                     id="getMybaozang" href="#">传家宝藏</a></li>
                <li class="baozangtab" role="presentation"><a style="text-align:center;vertical-align:middle"
                                                              id="getBuybaozang" href="#">收购宝藏</a></li>
            </ul>
            <div id="baozang-content" class="container">
                <div id="baozang-items" class="row">
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="body-title">
            我的交易记录
        </div>
        <div class="container">
            <form class="form-inline">
                <input class="form-control col-md-3" name="keyword" type="text" placeholder="请输入关键字"></input>
                <select class="form-control" id="tradeType" name="tradeType">
                    <option selected="selected" value="0">交易类型</option>
                    <option value="1">买入</option>
                    <option value="2">卖出</option>
                </select>

                <div data-link-format="yyyy-mm-dd" data-link-field="dtp_input2" data-date-format="" data-date=""
                     class="input-group date form_date col-md-2">
                    <input name="startTime" type="text" readonly="" value="" size="16" class="form-control">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                ----
                <div data-link-format="yyyy-mm-dd" data-link-field="dtp_input2" data-date-format="" data-date=""
                     class="input-group date form_date col-md-2">
                    <input name="endTime" type="text" readonly="" value="" size="16" class="form-control">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>

                <button id="getMytrade" type="button" class="btn btn-warning">查询</button>
            </form>

            <table id="trade-result" class="table table-striped">
                <thead>
                <tr>
                    <th>数据对象</th>
                    <th>数据周期</th>
                    <th>交易时间</th>
                    <th>交易类型</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
</div>

<div class="main-form-bottom-bg"></div>
<div class="main-image-1">
    <img alt="" src="../assets/img/6.png">
</div>
<div class="container">
    <footer>
        <div align="center">
            <p>©2014 版权所有 亚信集团股份有限公司 京ICP备11005544号-15 京公网安备110108007119号</p>
        </div>
    </footer>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">上传数据周期</h4>
            </div>
            <div class="modal-body">
      		  	<span>
      		  		<label class="control-label col-md-2">上传周期</label>
      		  		<div data-link-format="yyyy-mm-dd" data-link-field="dtp_input2" data-date-format="" data-date=""
                         class="input-group date form_date col-md-8">
                        <input name="uploadtime" type="text" readonly="" value="" size="16" class="form-control">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
      		  	</span>
      		  	<span>
      		  		<label class="control-label col-md-2">文件上传</label>
      		  		<div class="input-group col-md-8">
                        <input type="file" id="inputFile">
                    </div>
      		  	</span>
      		  	<span>
      		  		<div class="col-md-2"></div>
      		  		<div class="col-md-8">
                        <input type="button" class="uploadsubmit" value="确认上传" class="btn btn-default" id="submit">
                    </div>
      		  	</span>
            </div>
        </div>
    </div>
</div>
</body>
<script id="baozang-item" type="text/x-jquery-tmpl">
		{{each(i,data) datas}}
			<div style="margin-bottom:10px" class="col-xs-6 col-md-6 item-image"><span class="col-xs-5 col-md-5"><img src="../assets/img/img3.png"><img class="item-image-hidden" src="../assets/img/add.png"></span><span class="col-xs-7 col-md-7">${'${'}data.dataitemName}<br>${'${'}data.comment}</span></div>
		{{/each}}


</script>
<script id="trade-items" type="text/x-jquery-tmpl">
		<thead>
			<tr><th>数据对象</th><th>数据周期</th><th>交易时间</th><th>交易类型</th></tr>
	    </thead>
<tbody>
		{{each(i,data) datas}}
			<tr><td>${'${'}data.dataitemName}</td><td>${'${'}data.strRefreshtype}</td><td>${'${'}data.dataDate}</td><td>${'${'}data.tradeType}</td></tr>
		{{/each}}
</tbody>


</script>
<script type="text/javascript">
    $(function () {
        $('.form_date').datetimepicker({
            language: 'zh-CN',
            weekStart: 1,
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0
        });

        var getMybaozang = function () {
            console.info(1);
            $('#getMybaozang').parent().addClass("active")
            $('#getBuybaozang').parent().removeClass("active")
            //var eachData = {datas:[{"dataitemName":"名称1",comment:"描述2"},{dataitemName:"名称3",comment:"描述4"},{dataitemName:"名称5",comment:"描述6"}]};
            $.get(host + "/datahub/dataItemsAction!dataitemTypeList.action?tradeType=" + 1, function (result) {
                var eachData2 = result;
                //alert(JSON.stringify(result));
                //	alert(eachData2);

                //	console.info(result);
                $("#baozang-items").empty();
                $("#baozang-item").tmpl(eachData2).appendTo('#baozang-items');
            });
        }
        getMybaozang();
        $("#getMybaozang").click(getMybaozang);

        var getBuybaozang = function () {
            $('#getMybaozang').parent().removeClass("active");
            $('#getBuybaozang').parent().addClass("active");
            console.info(2);
            //var eachData = {datas:[{id:"名称5",desc:"描述55"},{id:"名称6",desc:"描述77"},{id:"名称7",desc:"描述99"}]};
            //var eachData1;
            $.get(host + "/datahub/dataItemsAction!dataitemTypeList.action?tradeType=" + 2, function (result) {
                var eachData1 = result;
                //alert(JSON.stringify(result));
                //alert(eachData1);

                //console.info(result);
                $("#baozang-items").empty();
                $("#baozang-item").tmpl(eachData1).appendTo('#baozang-items');
            });


        }
        $("#getBuybaozang").click(getBuybaozang);

        var getMyTrade = function () {
            var keyWord = $("input[name=keyword]").val();
            var tradeType = $('#tradeType option:selected').val();
            var startTime = $("input[name=startTime]").val();
            var endTime = $("input[name=endTime]").val();
            //alert(keyWord+":"+tradeType+":"+startTime+":"+endTime);
            //console.info(3);
            //var eachData = {datas:[{id:"名称1",tradeType:"买入",tradeTime:"2015-01-10",dataCircle:"月"},{id:"名称3",tradeType:"买入",tradeTime:"2015-01-10",dataCircle:"月"},{id:"名称5",tradeType:"买入",tradeTime:"2015-01-10",dataCircle:"月"}]};
            $.get(host + "/datahub/dataItemsAction!dataitemList.action?keyword=" + encodeURI(encodeURI(keyWord)) + "&tradeType=" + tradeType + "&startTime=" + startTime + "&endTime=" + endTime, function (result) {
                var eachData3 = result;
                $("#trade-result").empty();
                $("#trade-items").tmpl(eachData3).appendTo('#trade-result');
            });
        }
        getMyTrade();
        $("#getMytrade").click(getMyTrade);

        $('.item-image').mouseover(function () {
            $(this).find('.item-image-hidden').css("visibility", "visible");
        });
        $('.item-image').mouseout(function () {
            $(this).find('.item-image-hidden').css("visibility", "hidden");
        });
        $('.item-image-hidden').click(function () {
            $('#myModal').modal('toggle')
        });

    });
</script>
</html>