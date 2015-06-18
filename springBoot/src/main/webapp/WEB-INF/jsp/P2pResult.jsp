<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <script>
      alert("该页面不兼容IE8及更低版本浏览器\n请升级IE浏览器或使用其他现代浏览器");
  </script>
<![endif]-->


<script type="text/javascript" src="resources/js/jquery-1.11.2.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources/dist/css/bootstrap.min.css" />
<script type="text/javascript" src="resources/dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources/css/jquery.bs_pagination.css" />
<script type="text/javascript" src="resources/js/jquery.bs_pagination.min.js"></script>
<script type="text/javascript" src="resources/js/bs_pagination_en.js"></script> 

<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<link rel="stylesheet" type="text/css" href="resources/css/zi.css" />

</head>

<body>
    <div class="header">
        <div class="container">
            <h1>
                <a href="index.html">
                    <img class="logo" src="resources/imgs/logo_zi.png" alt="" />
                    <img class="logot" src="resources/imgs/logoT_zi.png" alt="" />   
                </a>
            </h1>   
        </div>
    </div>
    
    <form  method="get" action="/ebtSearch/queryP2pList" onsubmit="return initMinMoney()">
    <div class="headertop">
        <div class="container">
        
           <!--search-->
            <div class="search">
            
            <div class="form-inline">
              <input type="hidden" name="pageNum" value="">
                  <div class="form-group wyf">
                    <input type="text" class="form-control money" value="${p2pVo.minMoney/10000}" name="minMoney" placeholder="您想投资的金额" title="您想投资的金额" />
                    <span class="wy">万元</span>
                  </div>
                  <div class="form-group">
                      <div class="dropdown">
                          <button id="dLabel" class="form-control" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <c:choose>
                           <c:when test="${p2pVo.monthRange != '0-100'}">
                            <strong><c:choose><c:when test="${p2pVo.maxMonth != 100}">${p2pVo.minMonth}~${p2pVo.maxMonth}个月</c:when>
                            <c:otherwise>24个月以上</c:otherwise></c:choose>
                            </strong>
                           </c:when>
                           <c:otherwise>
                          <strong> 	 投资期限</strong>
                           </c:otherwise>
                          </c:choose>                           
                            <span class="caret"></span>
                          </button>
                           <input type="hidden" value="${p2pVo.monthRange}" name="monthRange">
                          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                          	<li><a href="###" value="0-100">任意</a></li>
		                    <li><a href="###" value="0-3">0~3个月</a></li>
		                    <li><a href="###" value="3-6">3~6个月</a></li>
		                    <li><a href="###" value="6-12">6~12个月</a></li>
		                    <li><a href="###" value="12-24">12~24个月</a></li>
		                    <li><a href="###" value="24-100">24个月以上</a></li>
                          </ul>
                     </div>
                  </div>
                  <div class="form-group">
                      <div class="dropdown">
                          <button id="dLabel" class="form-control" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <c:choose>
                           <c:when test="${p2pVo.rateRange != '0-1000'}">
                            <strong><c:choose><c:when test="${p2pVo.maxRate != 1000}">${p2pVo.minRate}%~${p2pVo.maxRate}%</c:when>
                            <c:otherwise>25%以上</c:otherwise></c:choose>
                            </strong>
                           </c:when>
                           <c:otherwise>
                          	 <strong>收益率 </strong>
                           </c:otherwise>
                          </c:choose>
                            <span class="caret"></span>
                          </button>
                           <input type="hidden" value="${p2pVo.rateRange}" name="rateRange">
                          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                         		 <li><a href="###" value="0-1000">任意</a></li>
                              <li><a href="###" value="0-5">0%~5%</a></li>
			                    <li><a href="###" value="5-10">5%~10%</a></li>
			                    <li><a href="###" value="10-15">5%~10%</a></li>
			                    <li><a href="###" value="15-20">15%-20%</a></li>
			                    <li><a href="###" value="20-25">20%-25%</a></li>
			                    <li><a href="###" value="25-1000">25%以上</a></li>           
                          </ul>
                     </div>
                  </div>
                  <button type="submit" class="btn btn-default" onclick='$("input[name=datasource]").val("");'>搜索</button>
               </div>
                <span class="ptly"></span>  
            </div>

            <!--brand_list-->
            <div class="brand_lsit">
            <input type="hidden" value="${p2pVo.datasource}" name="datasource">
                <ul class="imglist">
                <li><a href="###" class="<c:if test="${fn:trim(p2pVo.datasource)==''}">active</c:if>"><img src="resources/imgs/demo/logo0.gif" alt=""></a></li>
                <c:forEach items="${p2psourceList}" var="curSource">
                  <li><a href="###" class="<c:if test="${curSource.datasource == p2pVo.datasource}">active</c:if>"value="${curSource.datasource}"><img src="${curSource.img}" alt=""></a></li>
                </c:forEach>                
                    <!-- <li><a href="###"><img src="resources/imgs/demo/logo4.jpg" alt=""></a></li>
                    <li><a href="###"><img src="resources/imgs/demo/logo1.gif" alt=""></a></li>
                    <li><a href="###"><img src="resources/imgs/demo/logo2.gif" alt=""></a></li>
                    <li><a href="###"><img src="resources/imgs/demo/logo3.gif" alt=""></a></li>
                    <li><a href="###"><img src="resources/imgs/demo/logo5.gif" alt=""></a></li>
                    <li><a href="###"><img src="resources/imgs/demo/logo1.gif" alt=""></a></li> -->
                </ul> 
                <ul class="conlist Song imglist">
                 <!--
                <c:forEach items="${p2psourceList}" var="curSource" begin="7" >
                  <li><a href="###" class="<c:if test="${curSource.datasource == p2pVo.datasource}">active</c:if>"value="${curSource.datasource}"><img src="${curSource.img}" alt=""></a></li>
                </c:forEach>   --> 
                </ul>  
                 <!-- <span class="more"><a href="###">+更多</a></span>       -->
            </div>

        </div>     
    </div>
    
    <!--invest_select-->
    <div class="container">
        <div class="row invest_select">
            <div class="col-md-2 col-md-offset-6">
            <div class="btn-group" role="group">
                    <button type="button" class="btn btn-default dropdown-toggle <c:if test="${p2pVo.scoreOrder !=null &&p2pVo.scoreOrder != -1 }">active</c:if>"  data-toggle="dropdown" aria-expanded="false">
                      <c:choose>
                           <c:when test="${p2pVo.scoreOrder == 0}">
                            <strong>平台评分升序</strong>
                            <span class="caret up"></span>
                           </c:when>
                           <c:otherwise>
                          	 <strong>平台评分降序</strong>
                          	 <span class="caret"></span>
                           </c:otherwise>
                          </c:choose>                      
                    </button>
                     <input type="hidden"  value="-1" name="scoreOrder">
                    <!--
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="###" value="0">平台评分升序</a></li>
                      <li><a href="###" value="1">平台评分降序</a></li>
                    </ul>
                    -->
                </div>          
           
            </div>
            
            <div class="col-md-2">
               
                <div class="btn-group" role="group">
                    <button type="button" class="btn btn-default dropdown-toggle <c:if test="${p2pVo.rateOrder !=null &&p2pVo.rateOrder != -1 }">active</c:if>"  data-toggle="dropdown" aria-expanded="false">
                      <c:choose>
                           <c:when test="${p2pVo.rateOrder == 0}">
                            <strong>收益率升序</strong>
                             <span class="caret up"></span>
                           </c:when>
                           <c:otherwise>
                          	 <strong>收益率降序</strong>
                          	  <span class="caret"></span>
                           </c:otherwise>
                          </c:choose>                     
                    </button>
                     <input type="hidden"  value="-1" name="rateOrder">
                   <!--  <ul class="dropdown-menu" role="menu">
                      <li><a href="###" value="0">收益率升序</a></li>
                      <li><a href="###" value="1">收益率降序</a></li>
                    </ul> -->
                </div>
           
            </div>
            
            <div class="col-md-2 pdl0">
                <div class="btn-group" role="group">
                    <button type="button" class="btn btn-default dropdown-toggle <c:if test="${p2pVo.cycleOrder !=null &&p2pVo.cycleOrder != -1 }">active</c:if>" data-toggle="dropdown" aria-expanded="false">
                        <c:choose>
                           <c:when test="${p2pVo.cycleOrder == 0}">
                            <strong>投资期限升序</strong>
                              <span class="caret up"></span>
                           </c:when>
                           <c:otherwise>
                          	 <strong>投资期限降序</strong>
                          	   <span class="caret"></span>
                           </c:otherwise>
                          </c:choose>
                    
                    </button>
                     <input type="hidden"  value="-1" name="cycleOrder">
                   <!--  <ul class="dropdown-menu" role="menu">
                      <li><a href="###" value="0">投资期限升序</a></li>
                      <li><a href="###" value="1">投资期限降序</a></li>
                    </ul> -->
                </div>
           
            </div>
        </div>
    </div>
     </form>
     
    <!--mainlist-->
    <div class="container">
        <ul class="mainlist">
        <c:forEach items="${p2pList}" var="curP2p" >
            <li class="row">
                <div class="col-md-4 pdl0">
                    <section class="col-md-4">
                        <figure><a href="/ebtSearch/p2p/detail?datasource=${curP2p.datasource}" target="_blank"><img src="${curP2p.img}" alt="" /></a></figure>
                        <p>${curP2p.datasource}</p>
                    </section>
                    <section class="col-md-8">
                       <a href="${curP2p.url}" target="_blank"> <h4>${curP2p.prodname}</h4></a>
                        <span>发售日期：<fmt:formatDate value="${curP2p.date}" pattern="yyyy/MM/dd"/></span>
                        <span>产品期限：${curP2p.cycle}<c:if test="${curP2p.cycleunit == '月'}">个</c:if>${curP2p.cycleunit}</span>
                    </section>
                </div>
                <div class="col-md-2">
                 <h5>综合评分</h5>
                	<strong class="blue">${curP2p.score}</strong>
                </div>
                <div class="col-md-2">
                    <h5>收益率</h5>
                    <strong>${curP2p.rate}%</strong>
                </div>
                <div class="col-md-2">
                    <h5>预期收益(10万元)</h5>
                    <em><strong><fmt:formatNumber value=" ${curP2p.rate*10*curP2p.cycle/100/12}" pattern="##.##" minFractionDigits="2" ></fmt:formatNumber>  </strong>万元</em>
                </div>
                <div class="col-md-2">
                	<button class="btn btn-lg btn-tou" productId = "${curP2p.id}">投资</button>
                </div>
            </li>
            </c:forEach>
           
        </ul>
    </div>
    
    <!--page-->
    <div  id="demo_pag1">
       <!--  <em>共23条项目</em>
        <div class="page">
            <a class="curz" href="">上一页</a>
            <a class="cur" href="">1</a>
            <a href="">2</a>
            <a href="">3</a>
            <a href="">下一页</a>
        </div> -->        
    </div>   
    
    <!-- fu -->
    <c:forEach  items="${p2pList}" var="curP2p" >
    <div class="fuzong" productId = "${curP2p.id}">
    	<div class="fuzi">
	    	<div class="fuzi_main">
	    		<h2>投资项目详情 <a href="###" class="glyphicon glyphicon-remove closen"></a></h2>
	    		<section class="invesmodel">
	    			<header class="row">
	    				<div class="col-md-6 pdl0">
	    					<section class="col-md-3 pdl0 pdr0">
		                        <figure><a href="${curP2p.url}" target="_blank"><img src="${curP2p.img}" alt="" /></a></figure>
		                      <%--   <p>${curP2p.datasource}</p> --%>
		                    </section>
		                    <section class="col-md-9 imgt">
		                       	<a href="${curP2p.url}" target="_blank"> <h4>${curP2p.datasource}</h4></a>
		                       	
		                         <span>发售日期：<fmt:formatDate value="${curP2p.date}" pattern="yyyy/MM/dd"/></span>
                        		<%-- <span>产品期限：${curP2p.cycle}<c:if test="${curP2p.cycleunit == '月'}">个</c:if>${curP2p.cycleunit}</span> --%>
		                        
		                    </section>
	    				</div>
	    				<div class="col-md-2">
	    					<h5>评分</h5>
                    		<em><strong class="blue">${curP2p.score}</strong></em>
	    				</div>
	    				<div class="col-md-2">
	    					<h5>收益率</h5>
                    		<em><strong>${curP2p.rate}</strong>%</em>
	    				</div>
	    				<div class="col-md-2">
	    					<h5>期限</h5>
                    		<em><strong>${curP2p.cycle}</strong><c:if test="${curP2p.cycleunit == '月'}">个</c:if>${curP2p.cycleunit}</em>
	    				</div>
	    			</header>
	    			<article class="row" style="display:none">
	    				<div class="col-md-6 pdl0 pdr10">
	    					<section>这里放图表</section>
	    				</div> 
	    				<div class="col-md-6 pdr0 pdl10">
	    					<section>这里放图表</section>
	    				</div>
	    			</article>
	    			<dl>
	    				<dt>管理费：</dt>	    				
	    				<dd><c:if test="${fn:trim(sourceDetail.get(curP2p.datasource).managecost)==''}">-</c:if>${sourceDetail.get(curP2p.datasource).managecost}</dd>
	    				<dt>充值费：</dt>
	    				<dd><c:if test="${fn:trim(sourceDetail.get(curP2p.datasource).topupcost)==''}">-</c:if>${sourceDetail.get(curP2p.datasource).topupcost}</dd>
	    				<dt>提现费：</dt>
	    				<dd><c:if test="${fn:trim(sourceDetail.get(curP2p.datasource).withdrawalcost)==''}">-</c:if>${sourceDetail.get(curP2p.datasource).withdrawalcost}</dd>
	    				<dt>vip费用：</dt>
	    				<dd><c:if test="${fn:trim(sourceDetail.get(curP2p.datasource).vipcost)==''}">-</c:if>${sourceDetail.get(curP2p.datasource).vipcost}</dd>
	    				<dt>转让费用：</dt>
	    				<dd><c:if test="${fn:trim(sourceDetail.get(curP2p.datasource).transfercost)==''}">-</c:if>${sourceDetail.get(curP2p.datasource).transfercost}</dd>
	    				<dt>支付方式：</dt>
	    				<dd><c:if test="${fn:trim(sourceDetail.get(curP2p.datasource).payway)==''}">-</c:if>${sourceDetail.get(curP2p.datasource).payway}</dd>
	    			</dl>
	    			<button class="btn btn-tou" onclick="javascript:window.open('${curP2p.url}','_blank')">马上投资</button>
	    		</section>
	    	</div>
	    </div> 
    </div>
    </c:forEach>
   
    <script type="text/javascript">
    	//初始变量
        var pages = ${p2pPageInfo.pages};
        var pageNum = ${p2pPageInfo.pageNum};
        var pageSize = ${p2pPageInfo.pageSize};
        var totalRows = ${p2pPageInfo.total};
        
        $(function(){    
        	
            /*金额*/
            $('.money').focus(function(){
                $(this).val("");
            })
            
            $('.money').blur(function(){
                var val = $(this).val();
                if(isNaN(val)){
                    alert("输入的不是数字");
                    $(this).val("您想投资的金额");
                }else if(val == ""){
                    $(this).val("您想投资的金额");
                }
            })
          
            /*下拉效果*/
             $('.search .dropdown-menu>li>a').click(function(){
                var text = $(this).text();
                var value = $(this).attr("value");
                $(this).parents('.dropdown').find('strong').text(text);
                $(this).parents('.dropdown').find('input[type=hidden]').val(value);
            })
            
          /*   $('.invest_select .dropdown-menu>li>a').click(function(){
                var text = $(this).text();
                var value = $(this).attr("value");
                $(this).parents('.btn-group').find('strong').text(text);
                $(this).parents('.btn-group').find('input[type=hidden]').val(value);
                //提交表单
                $("form").submit();
            })  */
            
            /*图片列表*/
            $('.imglist a').click(function(){
                $(this).addClass('active').parent('li').siblings('li').find('a').removeClass('active');
                $('.conlist a').removeClass('active');
                
                //添加数据
                var value = $(this).attr("value");
                $(this).parents(".brand_lsit").find('input[type=hidden]').val(value);
                $("form").submit();
            })
            $('.conlist a').click(function(){
                $(this).addClass('active').parent('li').siblings('li').find('a').removeClass('active');
                $('.imglist a').removeClass('active');
            })
            
            /*更多*/
            $('.more a').click(function(){
                $(this).toggleClass('active');
                if($(this).hasClass('active')){
                    $('.conlist').slideDown(200); 
                    $(this).text("收起");
                }else{
                    $('.conlist').slideUp(200); 
                    $(this).text("+更多");
                }
            })
            
            //分页
            $("#demo_pag1").bs_pagination({
      		  currentPage: pageNum,		  
      		  totalPages: pages,      
      		  totalRows :totalRows,
      		  visiblePageLinks: 10	,
      		  rowsPerPage: pageSize,		 
      		  showGoToPage: true,
      		  showRowsPerPage: false,
      		  showRowsInfo: true,
      		  showRowsDefaultInfo: true,
      		  
      		  onChangePage: function(event, data) {
      			    // your code here e.g.
      			    
      			    $('input[name=pageNum]').val(data.currentPage);     			    
      			 	$("form").submit();
      		 }
      		});  
            
            //浮动框
            $('.mainlist li .btn-tou').click(function(){
            	var id = $(this).attr('productId');
            	var fuzong  = $('.fuzong[productId='+id+']');
            	fuzong.fadeIn(200);
            	fuzong.find('.fuzi').addClass('futrans');
            	$('body').addClass('modal-open');
            })
            $('.fuzong,.closen,.invesmodel .btn-tou').click(function(){
            	$('.fuzong').fadeOut(200);
            	$('.fuzi').removeClass('futrans');
            	setTimeout(function(){
            		$('body').removeClass('modal-open');
            	},100);
            })
            $('.fuzi').click(function(e){
            	e.stopPropagation();
            })
            
            //.btn-group button
            $('.btn-group button').click(function(){
            	var value = 0;
            	$(this).toggleClass('active');
            	$(this).find('.caret').toggleClass('up');
            	if($(this).find('.caret').hasClass('up')){
            		//降序
            		value = 0
            	}else{
            		value =1 ;
            	}
            	
            	$(this).siblings('input').val(value);
            	$("form").submit();
            })

        })
        
          
       //设置默认金额        
        function initMinMoney(){
        	var defaultValue = $("input[name= minMoney]").val();        	
        	if("您想投资的金额"== defaultValue){
        	$("input[name= minMoney]").val(0);
        	}else{
        		defaultValue =defaultValue*10000;
        		$("input[name= minMoney]").val(defaultValue);
        	}
        	return true;
        }
    </script>
    
</body>
</html>
