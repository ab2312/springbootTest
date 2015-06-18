<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
    <%
		String base = request.getContextPath();
		request.setAttribute("base", base);
	%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>聚码</title>
<link rel="stylesheet" type="text/css" href="${base}/resources/dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${base}/resources/css/default.css" />
<link rel="stylesheet" type="text/css" href="${base}/resources/css/index.css" />
<script type="text/javascript" src="${base}/resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="${base}/resources/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${base}/resources/echarts/echarts.js"></script>
<style>

#to_top,#fx_top{display:none; background-color:rgba(0,0,0,0.2); position:fixed; display:block; width:100px; height:100px; bottom:10px; right:10px; z-index:5;}
#to_top a,#fx_top a{color:#fff; display:block; width:100%; height:100%; text-align:center; box-sizing:border-box; padding-top:40px; -webkit-transition:all .3s; -moz-transition:all .3s; -ms-transition:all .3s; -o-transition:all .3s; transition:all .3s;}
#to_top a:hover,#fx_top a:hover{background-color:rgba(0,0,0,0.5);}
#fx_top{bottom:120px;}
</style>
</head>

<body>
    <div class="bg"></div>
    <div class="container">
        
        <!--header-->
        <header class="row header">
            <div class="col-md-12"><h1><a href="#showAnalysis" target="_self"></a></h1></div>
        </header>
        
        <section class="filter_cond">
        	<a href="###" class="up">筛选条件<span class="caret"></span></a>
        </section>
        
        <!--julist-->
        <div class="row">
            <div class="julist up col-md-12">
          
                <header>
                    <section class="">
                        <span class="title">所在城市</span>
                        <div class="">
                            <div class="dropdown" data-select>
                              <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="true">
                                <strong>上海</strong>
                                <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu" role="menu">
                                <li><a href="#">上海</a></li>
                               <!--  <li><a href="#">广州</a></li>
                                <li><a href="#">深圳</a></li>
                                <li><a href="#">北京</a></li> -->
                              </ul>
                            </div>
                        </div>
                    </section>
                    <section class="">
                        <span class="title">行政区</span>
                        <div class="">
                            <div class="dropdown" data-select>
                              <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="true">
                                <strong id="address">全部</strong>
                                <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu" role="menu">
                                <li><a href="#">全部</a></li>
                                <li><a href="#">黄浦区</a></li>
                                <li><a href="#">徐汇区</a></li>
                                <li><a href="#">长宁区</a></li>
                                <li><a href="#">静安区</a></li>
                                <li><a href="#">普陀区</a></li>
                                <li><a href="#">闸北区</a></li>
                                <li><a href="#">虹口区 </a></li>
                                <li><a href="#">宝山区 </a></li>
                                <li><a href="#">杨浦区</a></li>
                                <li><a href="#">嘉定区</a></li>
                                <li><a href="#">浦东新区</a></li>
                                <li><a href="#">松江区</a></li>
                                <li><a href="#">青浦区 </a></li>
                                <li><a href="#">南汇区</a></li>
                                <li><a href="#">奉贤区 </a></li>
                                <li><a href="#">金山区 </a></li>                                
                              </ul>
                            </div>
                        </div>
                    </section>
                    <section class="form-inline">                
                        <div class="form-group">
                        	<label>酒店名</label>
                            <input id="hotelname" class="form-control" value=""></input>
                            <button class="btn btn-default" onclick="refreshHotels()"><span class="glyphicon glyphicon-search"></span> 搜索</button>
                        </div>
                    </section>
                    <!-- <section class="">
                        <span class="title">观光景点</span>
                        <div class="">
                            <div class="dropdown" data-select>
                              <button class="btn btn-default dropdown-toggle"  type="button" data-toggle="dropdown" aria-expanded="true">
                                <strong>上海</strong>
                                <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu" role="menu">
                                <li><a href="#">上海</a></li>
                                <li><a href="#">广州</a></li>
                                <li><a href="#">深圳</a></li>
                                <li><a href="#">北京</a></li>
                              </ul>
                            </div>
                        </div>
                    </section> -->
                </header>
                <div class="julist_main">
                    <section class="money">
                        <h5>价格：</h5>
                        <div>
                            <ul>
                                <li><a href="###" class="checkno active" value="0-9999999">不限</a></li>
                                <li><a href="###" class="checkno" value="0-150">￥150以下</a></li>
                                <li><a href="###" class="checkno" value="151-300">￥151-300</a></li>
                                <li><a href="###" class="checkno" value="301-450">￥301-450</a></li>
                                <li><a href="###" class="checkno" value="451-600">￥451-600</a></li>
                                <li><a href="###" class="checkno" value="600-9999999">￥600以上</a></li>
                            </ul>
                            <input type="hidden" class="coint" value="" />
                        </div>
                    </section>
                   
                    <section class="brand">
                        <h5>品牌：</h5>
                        <div>
                            <ul class="brhead">
                                <li class="active"><a href="###">如家<span class="caret"></span></a></li>
                                <li><a href="###">锦江之星<span class="caret"></span></a></li>
                                <li><a href="###">七天<span class="caret"></span></a></li>
                                <li><a href="###">汉庭<span class="caret"></span></a></li>
                                <li><a href="###">速8<span class="caret"></span></a></li>
                                <li><a href="###">桔子<span class="caret"></span></a></li>
                                <li><a href="###">格林豪泰<span class="caret"></span></a></li>
                                <li><a href="###">其他<span class="caret"></span></a></li>
                            </ul>
                            <section class="active">
                                <ul id="rjList">
                                
    							<c:forEach items="${rjList}" var="cur" >
                                    <li data-id="${cur.id}"><a href="###" class="checkno" title="${cur.hotelname}">${cur.hotelname}</a></li>
                                 </c:forEach>                                   
                                </ul>
                            </section>
                            <section>
                                <ul id="jjzxList">
                                <c:forEach items="${jjzxList}" var="cur" >
                                    <li data-id="${cur.id}"><a href="###" class="checkno" title="${cur.hotelname}">${cur.hotelname}</a></li>
                                 </c:forEach>    
                                </ul>
                            </section>
                            <section>
                                <ul id="sevendaysList" >
                                <c:forEach items="${sevendaysList}" var="cur" >
                                    <li data-id="${cur.id}"><a href="###" class="checkno">${cur.hotelname}</a></li>
                                 </c:forEach>    
                                </ul>
                            </section>
                                <section>
                                <ul id="htList" >
                                <c:forEach items="${htList}" var="cur" >
                                    <li data-id="${cur.id}"><a href="###" class="checkno">${cur.hotelname}</a></li>
                                 </c:forEach>    
                                </ul>
                            </section>
                                <section>
                                <ul id="su8List" >
                                <c:forEach items="${su8List}" var="cur" >
                                    <li data-id="${cur.id}"><a href="###" class="checkno">${cur.hotelname}</a></li>
                                 </c:forEach>    
                                </ul>
                            </section>
                                 <section>
                                <ul id="juziList" >
                                <c:forEach items="${juziList}" var="cur" >
                                    <li data-id="${cur.id}"><a href="###" class="checkno">${cur.hotelname}</a></li>
                                 </c:forEach>    
                                </ul>
                            </section>
                              <section>
                                <ul id="greenList" >
                                <c:forEach items="${greenList}" var="cur" >
                                    <li data-id="${cur.id}"><a href="###" class="checkno">${cur.hotelname}</a></li>
                                 </c:forEach>    
                                </ul>
                            </section>
                            <section>
                                <ul id="other">
                                 <c:forEach items="${other}" var="cur" >
                                    <li data-id="${cur.id}"><a href="###" class="checkno" title="${cur.hotelname}">${cur.hotelname}</a></li>
                                 </c:forEach>                          
                                </ul>
                            </section>
                            
                             <!--anything_jumain-->     
					        <article class="anything_jumain">
					        	<h4>该酒店附近还有：</h4>
								<ul class="active">
									<!-- <li data-id="br-2-1"><a href="###" class="check">锦江之星上海火车站北广场长途汽车客运总站1</a></li>
									<li data-id="br-2-2"><a href="###" class="check">锦江之星上海火车站北广场长途汽车客运总站2</a></li>
									<li data-id="br-2-3"><a href="###" class="check">锦江之星上海火车站北广场长途汽车客运总站3</a></li>
									<li data-id="br-2-4"><a href="###" class="check">锦江之星上海火车站北广场长途汽车客运总站4</a></li> -->
								</ul>
							</article>
                            
                        </div>                        
                      
                    </section>
                    
       
		<button type="button" class="btn btn-orange btn-block" onclick="showAnalysis()" >开始分析</button>
                </div>
            </div>
        </div>
        
        <div class="viewlist">
            <ul>
               <li class="vili"><a href="###"><b class="glyphicon glyphicon-remove"></b></a></li>
            </ul>
        </div>
        
        <!--jumain-->
        <div class="row jumain" id="showAnalysis">
            <div class="col-md-3">
                <div class="jumain_sidebar">
                    <h4>报表类型</h4>
                    <ul>
                      <li class="active"><a href="###"><span class="zong"></span>综合分析</a></li>
                        <li ><a href="###"><span class="price"></span>价格分析</a></li>
                        <li><a href="###"><span class="talk"></span>评价分析</a></li>
                      
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                   <div class="jumain_main zong active">
                 	<section>
                        <div class="map" id="score" style="width:670px;height:500px"></div>
                        <p>此图表为统计连锁酒店从各个维度的网络评分</p>
                    </section> 
                    <section>
                        <div class="map" id="hisPosition" style="width:670px;height:500px"></div>
                        <p>此图表为统计连锁酒店从位置维度的网络评分</p>
                    </section> 
                    <section>
                        <div class="map" id="hisFacility" style="width:670px;height:500px"></div>
                        <p>此图表为统计连锁酒店从设施维度的网络评分</p>
                    </section> 
                    <section>
                        <div class="map" id="hisHealth" style="width:670px;height:500px"></div>
                        <p>此图表为统计连锁酒店从卫生维度的网络评分</p>
                    </section> 
                    <section>
                        <div class="map" id="hisService" style="width:670px;height:500px"></div>
                        <p>此图表为统计连锁酒店从服务维度的网络评分</p>
                    </section> 
                </div>
                
                <div class="jumain_main price ">
                    <section>
                       <!--  <div class="dropdown" data-select>
                          <button class="btn btn-default dropdown-toggle"  disabled type="button" data-toggle="dropdown" aria-expanded="true">
                            <strong>锦江之星上海天目东路宝山路地铁站店-大床房</strong>
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="#">锦江之星上海天目东路宝山路地铁站店-大床房</a></li>
                            <li><a href="#">锦江之星上海天目东路宝山路地铁站店-大床2</a></li>
                            <li><a href="#">锦江之星上海天目东路宝山路地铁站店-大床3</a></li>
                            <li><a href="#">锦江之星上海天目东路宝山路地铁站店-大床4</a></li>
                          </ul>
                        </div>
                        <div class="dropdown" data-select>
                          <button class="btn btn-default dropdown-toggle"  disabled type="button" data-toggle="dropdown" aria-expanded="true">
                            <strong>锦江之星上海天目东路宝山路地铁站店-大床房</strong>
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="#">锦江之星上海天目东路宝山路地铁站店-大床房</a></li>
                            <li><a href="#">锦江之星上海天目东路宝山路地铁站店-大床2</a></li>
                            <li><a href="#">锦江之星上海天目东路宝山路地铁站店-大床3</a></li>
                            <li><a href="#">锦江之星上海天目东路宝山路地铁站店-大床4</a></li>
                          </ul>
                        </div> -->
                        <div class="map" id="price" style="width:670px;height:500px"></div>
                        <p>此图表为统计连锁酒店从今天到未来7天的价格折线图</p>
                         <div class="map" id="history" style="width:670px;height:500px;display:none"></div> 
                       <!--  <p>此图表为统计连锁酒店从今天的历史价格折线图</p> -->
                    </section>
                </div>
          
                <div class="jumain_main talk">
                    <section>
                        <div class="map" id="hot" style="width:670px;height:350px"></div>
                        <p>此图表为统计连锁酒店评论热度分析</p>
                    </section> 
                    <section>
                        <div class="map" id="feeling" style="width:670px;height:650px"></div>
                        <p>此图表为统计连锁酒店评论极性分析</p>
                    </section>  
                      <section>
                        <div class="map" id="commentBreakfast" style="width:670px;height:650px"></div>
                        <p>此图表为统计连锁酒店早餐评论分析</p>
                    </section>  
                       <section>
                        <div class="map" id="commentPark" style="width:670px;height:650px"></div>
                        <p>此图表为统计连锁酒店停车评论分析</p>
                    </section> 
                </div>
       
            </div>    
        </div>
        
    </div>
    <div id="fx_top"><a href="#showAnalysis">返回分析</a></div>
    <div id="to_top"><a href="###">返回頂部</a></div>
    
<script type="text/javascript">

	Array.prototype.contains = function(item){
	    return RegExp(item).test(this);
	};

	require.config({
	    paths: {
	        echarts: '${base}/resources/echarts'
	    }
	});

     function refreshHotels(){
    	 var hotelname = $("#hotelname").val();
    	 var address = $("#address").text();
    	 if(address=='全部'){ address=''};
    	 var priceInput = $('input.coint').val();
    	 var price = priceInput.split('-');
    	 
    	 var maxPrice;
    	 var minPrice
    	 if(price.length==2){
    		  maxPrice =price[1];
        	 minPrice =price[0];
    	}else{
    	maxPrice =9999999;
       	  minPrice =0;
    	}
    	 
    	 $.ajax({
    		  type: 'get',
    		  url: "${base}/refreshHotels",
    		  data: {'address':address,'maxPrice':maxPrice,'minPrice':minPrice,'hotelname':hotelname},
    		  dataType:'json',
    		  success: function(data){
    			  console.log(data);
    			  var selected = new Array();
    			  var viewlist = $('.viewlist ul li');
    			  viewlist.each(function(){
    				  selected.push($(this).attr('data-id'));
    			  });
    			  
    			  for(var key in data){    			 
    				  
    				  if(key == "likeHotel") {
    					  $(".brand h5").hide();
    					  $(".brand div ul").hide();
    					  $(".brand div section ul").html("");
    					  for(i=0;i<data[key].length;i++){
	    					  $(".brand div section.active ul").append('<li data-id="'+data[key][i].id+'"><a href="###" class="checkno" title="'+data[key][i].hotelname+
		    						  '"><span></span>'+data[key][i].hotelname+'</a></li>');
    					  }
    					  $(".brand div section.active ul").show();
    					  //$("#rjList").show();
    					  
    					  $('.checkno').click(function(){
    							$('.coint').val($(this).attr("value"));
    							$(this).addClass('active').parent('li').siblings('li').find('a').removeClass('active');
    							$(".brand div ul.active").show();
    							//refreshHotels();
    				      });
    	    			  
    	    			  more();
    	    	          moreTab();
    	    	          //$('.viewlist ul').html("");
    					  return;
    				  }
    				  
    				  $(".brand h5").show();
					  $(".brand div ul").show();    				  
	    			  $("#"+key).html("");
	    			  $("#"+key).removeClass("height");
	    			  $("#"+key).siblings("a").remove();
	    			  for(i=0;i<data[key].length;i++){
	    				  $("#"+key).append('<li data-id="'+data[key][i].id+'"><a href="###" class="checkno" title="'+data[key][i].hotelname+
	    						  '"><span></span>'+data[key][i].hotelname+'</a></li>');
	    				  if(selected.contains(data[key][i].id)){
	    					  $("#"+key+" li a").last().addClass('active');
	    				  }
	    			  	}
    			  }
    			  
    			  
    			  //initCheck();
    			  
			        $('.checkno').click(function(){
						$('.coint').val($(this).attr("value"));
						$(this).addClass('active').parent('li').siblings('li').find('a').removeClass('active');
						//refreshHotels();
			        });
    			  
    			  more();
    	          moreTab();
    			 
    		  },
    		  error:function(){
    			  alert('connect refused!')
    		  }
    		  
    		});
     }
     
     function refreshSub() {
    	 var hid = $(".viewlist ul li").attr("data-id");
    	 //alert(hid);
    	 $.ajax({
			 type: 'get',
			 url: "${base}/refreshSubHotels",
			 data: {'hotelId':hid},
			 dataType:'json',
			 success: function(data){
				 //append div
				//console.log(data);
				$(".anything_jumain ul").html("");
		     	$.each(data,function(){
		     		//<li data-id="br-2-1"><a href="###" class="check">锦江之星上海火车站北广场长途汽车客运总站1</a></li>
		     		//alert(this.id + this.hotelname);
		     		//alert();
		     		$(".anything_jumain ul").append('<li data-id="'+this.id+'"><a href="###" class="check" title="'+this.hotelname+
  						  '"><span></span>'+this.hotelname+'</a></li>');
		     
		     	});	
		     	initCheck();
			 }
    	 });
     }
     
     function leida(name,value) {
    	 this.name = name;
    	 this.value = value;
     }
     
     function zhexian(name,type,data) {
    	 this.name = name;
    	 this.type = type;
    	 this.data = data;
     }
     
     function zhuzhuang(name,type,data) {
    	 this.name = name;
    	 this.type = type;
    	 this.data = data;
     }
     
     function showAnalysis() {
    	 var ids = new Array();
	     $(".viewlist ul li").each(function(){
		 	ids.push($(this).attr("data-id"));
	     })
	     
	     if(typeof($(".vili").attr("data-id"))=="undefined" || $(".vili").attr("data-id") == "") {
	    	 alert("至少选择一家酒店");
	    	 return;
	     }
	     
	     $.ajax({
   		  type: 'post',
   		  url: "${base}/analysis",
   		  data: {'ids':ids},
   		  dataType:'json',
   		  success: function(data){
   			  //雷达图
   			  var leidadata = [];
   			  var legendname = [];
   			  $(data.score).each(function() {
   				  //console.log(this);
   				  legendname.push(this.datasource);
   				  leidadata.push(new leida(this.datasource,[this.position,this.facility,this.service,this.health,this.hot,this.pos]));
   			  });
   			  
   			  //价格折线图
   			  var zhexiandata = [];
 			  var zhexianname = [];
 			  var dateline = [];			  
 			  for(var key in data.price){
 				 //console.log(key + data.price[key]);
 				 zhexianname.push(key);
 				 var price = [];
 				 var ifdata = true;
 				 if(dateline.length != 0){
 					ifdata = false;
 				 }
 				 $(data.price[key]).each(function() {
 					price.push(this.price);
 					if(ifdata) {
 						dateline.push(new Date(this.checkIn).toLocaleDateString());
 					}
 				 });
 				 zhexiandata.push(new zhexian(key,'line',price));
 			  }
 			  
 			  //历史价格
 			  var hisdata = [];
			  var hisname = [];
			  var hisdate = [];
			  for(var key in data.history){
	 				 //console.log(key + data.price[key]);
	 				 hisname.push(key);
	 				 var price = [];
	 				 var ifdata = true;
	 				 if(hisdate.length != 0){
	 					ifdata = false;
	 				 }
	 				 $(data.history[key]).each(function() {
	 					price.push(this.price);
	 					if(ifdata) {
	 						hisdate.push(new Date(this.date).toLocaleDateString());
	 					}
	 				 });
	 				hisdata.push(new zhexian(key,'line',price));
	 			  }
 			  
			  //热度、极性折线图
 			  var hotdata = [];
			  var hotname = [];
			  var hotdate = [];
			  
			  var feelingdata = [];
			  var feelingname = [];
			  
			  for(var key in data.comment){
				 //console.log(key + data.price[key]);
				 hotname.push(key);
				 feelingname.push(key+'-好评');
				 feelingname.push(key+'-中评');
				 feelingname.push(key+'-差评');
				 var comNum = [];
				 var good = [];
				 var bad = [];
				 var neu = [];
				 var ifdate = true;
				 if(hotdate.length != 0){
					ifdate = false;
				 }
				 $(data.comment[key]).each(function() {
					//console.log(this.count);
					comNum.push(this.count);
					good.push(this.pos);
					bad.push(this.neg);
					neu.push(this.neu);
					if(ifdate) {
						//d.getFullYear() + '-' + (d.getMonth() + 1)
						var d = new Date(this.commentmonth);
						hotdate.push(d.getFullYear() + '-' + (d.getMonth() + 1));
					}
				 });
				 hotdata.push(new zhexian(key,'line',comNum));
				 feelingdata.push(new zhexian(key+'-好评','line',good));
				 feelingdata.push(new zhexian(key+'-中评','line',neu));
				 feelingdata.push(new zhexian(key+'-差评','line',bad));
			  }
			  
			  //评分纬度历史
			  var scorename	=	[];
			 
			  var scoredate	=	[];
			  
			  var hisPositiondata =	[];
			  var hisFacilitydata =	[];
			  var hisHealthdata =	[];
			  var hisServicedata =	[];
			  
			  for(var key in data.scoreHistroy){
				  var hisPosition =	[];
				  var hisFacility =	[];
				  var hisHealth =	[];
				  var hisService =	[];
				  
				  scorename.push(key);
				  var ifdate = true;				  
	 				 if(scoredate.length != 0){
	 					ifdate = false;
	 				 }
	 				 $(data.scoreHistroy[key]).each(function() {
	 					hisPosition.push(this.position);
	 					hisFacility.push(this.facility);
	 					hisHealth.push(this.health);
	 					hisService.push(this.service);
	 					if(ifdate) {
	 						scoredate.push(new Date(this.crawlerdate).toLocaleDateString());
	 					}
	 				 });
	 				hisPositiondata.push(new zhexian(key,'line',hisPosition));
	 				hisFacilitydata.push(new zhexian(key,'line',hisFacility));
	 				hisHealthdata.push(new zhexian(key,'line',hisHealth));
	 				hisServicedata.push(new zhexian(key,'line',hisService));
			  }
			  
			  //早餐评论
			  
			   var breakname	=	[];
			  var breakfastData	=	[];				  
			  
			  for(var key in data.commentB){
				  breakname.push(key)
				var breakfastfeel=[];
	 				 $(data.commentB[key]).each(function() {
	 					 
	 					breakfastfeel.push(this.pos);
	 					breakfastfeel.push(this.neu);
	 					breakfastfeel.push(this.neg);
	 					
	 				 });	
				  
				  breakfastData.push(new zhuzhuang(key,'bar',breakfastfeel));				 
	 				
			  }
			  
			  //停车评论			  
			   var parkname	=	[];
			  var parkData	=	[];				  
			  
			  for(var key in data.commentP){
				  parkname.push(key)
				var parkfeel=[];
	 				 $(data.commentP[key]).each(function() {
	 					 
	 					parkfeel.push(this.pos);
	 					parkfeel.push(this.neu);
	 					parkfeel.push(this.neg);
	 					
	 				 });	
				  
	 				parkData.push(new zhuzhuang(key,'bar',parkfeel));				 
	 				
			  }		

			  
   			  require(
   		            [
   		                'echarts',
   		                'echarts/chart/radar',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
   		                'echarts/chart/bar',
   		                'echarts/chart/line'
   		            ],
   		            
   		            function (ec) {
   		            	
   		                var myChart = ec.init(document.getElementById('score'));
   		                var myChart2 = ec.init(document.getElementById('price'));
   		                var myChart3 = ec.init(document.getElementById('hot'));
   		                var myChart4 = ec.init(document.getElementById('feeling'));
   		            	var myChart5 = ec.init(document.getElementById('history'));
   		            	var myChart6 = ec.init(document.getElementById('hisPosition'));
   		            	var myChart7 = ec.init(document.getElementById('hisFacility'));
   		            	var myChart8 = ec.init(document.getElementById('hisHealth'));
   		            	var myChart9 = ec.init(document.getElementById('hisService'));
   		            	var myChart10 = ec.init(document.getElementById('commentBreakfast'));
   		            	var myChart11 = ec.init(document.getElementById('commentPark'));
   		            	
   		                option = {
   		                	    title : {
   		                	        text: '酒店指标'
   		                	    },
   		                	    tooltip : {
   		                	        trigger: 'axis'
   		                	    },
   		                	    legend: {
   		                	        orient : 'vertical',
   		                	        x : 'right',
   		                	        y : 'bottom',
   		                	        data:leidadata
   		                	    },              	
   		                	    polar : [
   		                	       {
   		                	           indicator : [
   		                	               { text: '位置', max: 5},
   		                	               { text: '设施', max: 5},
   		                	               { text: '服务', max: 5},
   		                	               { text: '卫生', max: 5},
   		                	            	{ text: '热度', max: 5},
   		                	            	{ text: '好评', max: 5}
   		                	            ]
   		                	        }
   		                	    ],
   		                	    calculable : true,
   		                	    series : [
   		                	        {
   		                	            name: '指标',
   		                	            type: 'radar',
   		                	            data : leidadata
   		                	        }
   		                	    ]
   		                	};
   		                
   		             		option2 = {
		                	    title : {
		                	        text: '价格趋势'
		                	    },
		                	    tooltip : {
		                	        trigger: 'axis'
		                	    },
		                	    legend: {
		                	        orient : 'vertical',
		                	        x : 'right',
		                	        y : 'top',
		                  	        data:zhexianname
		                	    },              	
		                	    xAxis : [
		                	             {
		                	                 type : 'category',
		                	                 boundaryGap : false,
		                	                 data : dateline
		                	             }
		                	         ],
	                	         yAxis : [
	                	                  {
	                	                      type : 'value',
	                	                      axisLabel : {
	                	                          formatter: '{value} 元'
	                	                      }
	                	                  }
	                	              ],
		                	    series : zhexiandata
		                	};
   		             
   		          		option3 = {
	                	    title : {
	                	        text: '热度趋势'
	                	    },
	                	    tooltip : {
	                	        trigger: 'axis'
	                	    },
	                	    legend: {
	                	        orient : 'vertical',
	                	        x : 'right',
	                	        y : 'top',	                	 
	                	        data:hotname
	                	    },              	
	                	    xAxis : [
	                	             {
	                	                 type : 'category',
	                	                 boundaryGap : false,
	                	                 data : hotdate
	                	             }
	                	         ],
              	         yAxis : [
              	                  {
              	                      type : 'value',
              	                      axisLabel : {
              	                          formatter: '{value} 条'
              	                      }
              	                  }
              	              ],
	                	    series : hotdata
	                	};
   		          
   		          
		   		       option4 = {
		               	    title : {
		               	        text: '评论极性趋势'
		               	    },
		               	    tooltip : {
		               	        trigger: 'axis'
		               	    },
		               	    legend: {
		               	        orient : 'vertical',
		               	        x : 'right',
		               	        y : 'top',
		               	
		               	        data:feelingname
		               	    },              	
		               	    xAxis : [
		               	             {
		               	                 type : 'category',
		               	                 boundaryGap : false,
		               	                 data : hotdate
		               	             }
		               	         ],
		           	         yAxis : [
		           	                  {
		           	                      type : 'value',
		           	                      axisLabel : {
		           	                          formatter: '{value} 条'
		           	                      }
		           	                  }
		           	              ],
		               	    series : feelingdata
		               	};
		   		       
		   		     option5 = {
	                	    title : {
	                	        text: '今天的价格历史统计'
	                	    },
	                	    tooltip : {
	                	        trigger: 'axis'
	                	    },
	                	    legend: {
	                	        orient : 'vertical',
	                	        x : 'right',
	                	        y : 'top',
	                	  
	                	        data:hisname
	                	    },              	
	                	    xAxis : [
	                	             {
	                	                 type : 'category',
	                	                 boundaryGap : false,
	                	                 data : hisdate
	                	             }
	                	         ],
                	         yAxis : [
                	                  {
                	                      type : 'value',
                	                      axisLabel : {
                	                          formatter: '{value} 元'
                	                      }
                	                  }
                	              ],
	                	    series : hisdata
	                	};
		   		     
		   		  option6 = {
	                	    title : {
	                	        text: '位置维度历史趋势'
	                	    },
	                	    tooltip : {
	                	        trigger: 'axis'
	                	    },
	                	    legend: {
	                	        orient : 'vertical',
	                	        x : 'right',
	                	        y : 'top',	                	       
	                	        data:scorename
	                	    },              	
	                	    xAxis : [
	                	             {
	                	                 type : 'category',
	                	                 boundaryGap : false,
	                	                 data : scoredate
	                	             }
	                	         ],
              	         yAxis : [
              	                  {
              	                      type : 'value',
              	                      axisLabel : {
              	                          formatter: '{value} 分'
              	                      }
              	                  }
              	              ],
	                	    series : hisPositiondata
	                	};
		   		  option7 = {
	                	    title : {
	                	        text: '设施维度历史趋势'
	                	    },
	                	    tooltip : {
	                	        trigger: 'axis'
	                	    },
	                	    legend: {
	                	        orient : 'vertical',
	                	        x : 'right',
	                	        y : 'top',
	                	       
	                	        data:scorename
	                	    },              	
	                	    xAxis : [
	                	             {
	                	                 type : 'category',
	                	                 boundaryGap : false,
	                	                 data : scoredate
	                	             }
	                	         ],
            	         yAxis : [
            	                  {
            	                      type : 'value',
            	                      axisLabel : {
            	                          formatter: '{value} 分'
            	                      }
            	                  }
            	              ],
	                	    series : hisFacilitydata
	                	};
		   		  
		   		 option8 = {
	                	    title : {
	                	        text: '卫生维度历史趋势'
	                	    },
	                	    tooltip : {
	                	        trigger: 'axis'
	                	    },
	                	    legend: {
	                	        orient : 'vertical',
	                	        x : 'right',
	                	        y : 'top',
	                	       
	                	        data:scorename
	                	    },              	
	                	    xAxis : [
	                	             {
	                	                 type : 'category',
	                	                 boundaryGap : false,
	                	                 data : scoredate
	                	             }
	                	         ],
         	         yAxis : [
         	                  {
         	                      type : 'value',
         	                      axisLabel : {
         	                          formatter: '{value} 分'
         	                      }
         	                  }
         	              ],
	                	    series : hisHealthdata
	                	};
		   		  option9 = {
	                	    title : {
	                	        text: '服务维度历史趋势'
	                	    },
	                	    tooltip : {
	                	        trigger: 'axis'
	                	    },
	                	    legend: {
	                	        orient : 'vertical',
	                	        x : 'right',
	                	        y : 'top',
	                	  
	                	        data:scorename
	                	    },              	
	                	    xAxis : [
	                	             {
	                	                 type : 'category',
	                	                 boundaryGap : false,
	                	                 data : scoredate
	                	             }
	                	         ],
            	         yAxis : [
            	                  {
            	                      type : 'value',
            	                      axisLabel : {
            	                          formatter: '{value} 分'
            	                      }
            	                  }
            	              ],
	                	    series : hisServicedata
	                	};
		   		  
		   		option10 = {
		   			    title : {
		   			        text: '早餐评论数量统计'
		   			        
		   			    },
		   			    tooltip : {
		   			        trigger: 'axis'
		   			    },
		   			    legend: {
		   			     orient : 'vertical',
             	        x : 'right',
             	        y : 'top',
		   			        data:breakname
		   			    },
		   			
		   			    xAxis : [
		   			        {
		   			            type : 'category',
		   			            data : ['好评','中评' ,'差评']
		   			        }
		   			    ],
		   			    yAxis : [
		   			        {
		   			            type : 'value',
		   			         axisLabel : {
   	                          formatter: '{value} 条'
   	                      }
		   			        }
		   			    ],
		   			    series : breakfastData
		   			};
		   		
		   		option11 = {
		   			    title : {
		   			        text: '停车评论数量统计'
		   			        
		   			    },
		   			    tooltip : {
		   			        trigger: 'axis'
		   			    },
		   			    legend: {
		   			     orient : 'vertical',
             	        x : 'right',
             	        y : 'top',
		   			        data:parkname
		   			    },
		   			
		   			    xAxis : [
		   			        {
		   			            type : 'category',
		   			            data : ['好评','中评' ,'差评']
		   			        }
		   			    ],
		   			    yAxis : [
		   			        {
		   			            type : 'value',
		   			         axisLabel : {
   	                          formatter: '{value} 条'
   	                      }
		   			        }
		   			    ],
		   			    series : parkData
		   			};
		   		 
		   		        
   		                myChart.setOption(option);
   		             	myChart2.setOption(option2);
   		                myChart3.setOption(option3);
   		                myChart4.setOption(option4);
   		             	myChart5.setOption(option5);
   		             	myChart6.setOption(option6);
   		             	myChart7.setOption(option7);
   		             	myChart8.setOption(option8);
   		             	myChart9.setOption(option9);
   		             	myChart10.setOption(option10);
   		             	myChart11.setOption(option11);
   		            }
   		        );
   			  
   			$('.filter_cond a').removeClass('up');	
			$('.julist').slideUp(250);
   		  },
   		  error:function(){
   			  alert('connect refused!')
   		  }
   		  
   		});
     }
     
     /*更多*/
     function more(){
         if($('.brand > div section.active ul li').length>5){
             $('.brand > div section.active ul li:nth-child(5)').addClass('width')
             $('.brand > div section.active').append("<a class='more' href='###'>更多</a>");
         }
     }
     function moreTab(){
         $('.brand > div section.active').on('click','.more',function(){
             $('.brand > div section.active ul li').removeClass('width');
             $('.brand > div section.active ul').addClass('height');
             $(this).addClass('up').text('收起');
         })
         $('.brand > div section.active').on('click','.more.up',function(){
             $('.brand > div section.active ul li:nth-child(5)').addClass('width');
             $('.brand > div section.active ul').removeClass('height');
             $(this).removeClass('up').text('更多');  
         })
     }        
     
     function initCheck(){
    	    /*check*/  
    	 /*   
         $('.check').on('click',function(){
             $(this).toggleClass('active');
             if($(this).hasClass('active')){
                 $(this).append("<input type='hidden' class='int' value='' />");
                 $(this).find('.int').val($(this).text());
             }else{
                 $(this).find('.int').remove();
             }         
             
         })
         */
         
        $('.checkno').click(function(){
			$('.coint').val($(this).attr("value"));
			$(this).addClass('active').parent('li').siblings('li').find('a').removeClass('active');
			//refreshHotels();
        })
         
         /*筛选项显示*/
        /* $('.brand > div section ul li a').click(function(){
            var text = $(this).text();
            var dataId = $(this).parent('li').attr('data-id');
            if($(this).hasClass('active')){
                var len = $('.viewlist ul li').length;
                if(len<5){
                    $('.viewlist ul').append("<li data-id="+dataId+"><a href='###'>"+text+"<b class='glyphicon glyphicon-remove'></b></a></li>");
                }else{
                    $(this).removeClass('active');
                    alert("不能超过5个");
                }
            }else{
                $('.viewlist ul li[data-id='+dataId+']').remove();
            }
        })
        $('.viewlist ul').on('click','li',function(){
            var dataId = $(this).attr('data-id');
            $('.brand > div section ul li[data-id='+dataId+'] a').removeClass('active');
            $(this).remove();
        }) */
        
     }
     
     $('.anything_jumain ul').on('click','li a',function(){
    	
    	 
			var text = $(this).text();
         var dataId = $(this).parent('li').attr('data-id');
         
         $(this).toggleClass('active');
         
			if($(this).hasClass('active')){
				 var len = $('.viewlist ul li').length;
		    	 if(len == 5) {
		    		 $(this).removeClass('active');
		    		 alert("最多选5个");
		    		 return;
		    	 }
				$('.viewlist ul').append("<li data-id="+dataId+"><a href='###'>"+text+"<b class='glyphicon glyphicon-remove'></b></a></li>");
				$(this).append("<input type='hidden' class='int' value='' />");
	            $(this).find('.int').val($(this).text());
			}else{
				$(".viewlist ul li[data-id="+dataId+"]").remove();
				$(this).find('.int').remove();
			}
		});
     
    $(function(){
        /*下拉框*/
        $("[data-select]").find('ul li a').click(function(){
            var text = $(this).text();
            $(this).parents('.dropdown').find('strong').text(text);
            refreshHotels();
        })
        
        //初始化check
        $('.check').prepend('<span></span>');
    	initCheck();
        /**************************************************************************************/
        
        /*checkno*/
		$('.checkno').prepend('<span></span>');
        $('.checkno').click(function(){
			$('.coint').val($(this).attr("value"));
			$(this).addClass('active').parent('li').siblings('li').find('a').removeClass('active');
			
        })
        
        $(".money ul li a").click(function(){
        	refreshHotels();
        })
        
        /*酒店切换*/
        $('.brhead li').click(function(){
            $(this).addClass('active').siblings('li').removeClass('active');
            $($('.brand > div section')[$(this).index()]).addClass('active').siblings('section').removeClass('active');
            $($('.brand > div section')[$(this).index()]).siblings('section').find('.more').remove();
            $($('.brand > div section')[$(this).index()]).siblings('section').find('ul').removeClass('height');
            $($('.brand > div section')[$(this).index()]).siblings('section').find('ul li').removeClass('width');
            more();
            moreTab();
        })
   	     more();
        moreTab(); 
        

        
        /*报表分析切换*/
        $('.jumain_sidebar ul li').click(function(){
            $(this).addClass('active').siblings('li').removeClass('active');
            $($('.jumain_main')[$(this).index()]).addClass('active').siblings('.jumain_main').removeClass('active');
        })
        
/*         $('.checkno').click(function(){
			$('.coint').val($(this).attr("value"));
			$(this).addClass('active').parent('li').siblings('li').find('a').removeClass('active');
			refreshHotels();
        }) */
        
        $('#to_top').click(function(){
        	$('html,body').animate({scrollTop:0},500);
        })
        $('#to_top').hide();
        $(window).bind('scroll',function(){
        	if($(document).scrollTop()>300){
        		$('#to_top').fadeIn(200);	
        	}else{
        		$('#to_top').fadeOut(200);
        	}
        })
        
        /*.filter_cond a*/
		$('.filter_cond a').click(function(){
			$(this).toggleClass('up');
			$('.julist').toggleClass('up');
			if($(this).hasClass('up')){
				$('.julist').slideDown(250);
			}else{
				$('.julist').slideUp(250);
			}
		})
		/* $('.julist_main .btn-orange').click(function(){
			$('.filter_cond a').removeClass('up');	
			$('.julist').slideUp(250);
		}) */
        
		
		/*多选级联orz*/
		$('.brand > div section ul').on('click','li a',function(){
			var text = $(this).text();
            var dataId = $(this).parent('li').attr('data-id');
			if($(this).hasClass('active')){
				$(this).addClass('off').parent('li').siblings('li').find('a').removeClass('off');
				$('.viewlist ul li.vili').css('display','inline-block').attr('data-id',dataId);
				$('.viewlist ul li.vili a').html(text+"<b class='glyphicon glyphicon-remove'></b>");				
				$('.anything_jumain').show();
				$('.viewlist ul li').not($('.vili')).remove();
				$('.anything_jumain ul li a').removeClass('active');
				refreshSub();
			}
		})
		$('.brand > div section ul').on('click','li a.off',function(){
			$(this).removeClass('active').removeClass('off');
			$('.viewlist ul li.vili').css('display','none').attr('data-id','');
			$('.viewlist ul li.vili a').html("<b class='glyphicon glyphicon-remove'></b>");
			$('.viewlist ul li').not($('.vili')).remove();
			$('.anything_jumain ul li a').removeClass('active');
			$('.anything_jumain').hide();
		})
		$('.viewlist ul').on('click','li',function(){
			var dataId = $(this).attr('data-id');
			if($(this).hasClass('vili')){
				$('.viewlist ul li.vili').css('display','none').attr('data-id','');
				$('.viewlist ul li.vili a').html("<b class='glyphicon glyphicon-remove'></b>");
				$('.brand > div section ul li[data-id='+dataId+'] a').removeClass('active').removeClass('off');
				$('.viewlist ul li').not($('.vili')).remove();
				//$('.anything_jumain ul li').not($('.vili')).remove();  //实际使用应该是remove掉
				$('.anything_jumain ul li').not($('.vili')).find('a').removeClass('active');
				$('.anything_jumain').hide();
			}else{
				$('.anything_jumain ul li[data-id='+dataId+'] a').removeClass('active');
				$(this).remove();
			}
        })
		
		
    })
</script>
</body>
</html>
