var redio = new Array(deal,popular,income,divergence,liquidity,transparency);
var devtitle = "发展指数 " + devscore;
var feltitle = "舆情指数 " + feeling;
var feldegtitle = datasource + "评论极性趋势 ";

require.config({
            paths: {
                echarts: '../resources/echarts'
            }
        });
        require(
            [
                'echarts',
                'echarts/chart/radar',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
                'echarts/chart/bar',
                'echarts/chart/line'
            ],
            
            function (ec) {
                var myChart = ec.init(document.getElementById('develop'));
                var myChart2 = ec.init(document.getElementById('feel'));
                var myChart3 = ec.init(document.getElementById('hot'));
                var myChart4 = ec.init(document.getElementById('feeldeg'));
                var myChart5 = ec.init(document.getElementById('data1'));
                option = {
                	    title : {
                	        text: devtitle
                	    },
                	    tooltip : {
                	        trigger: 'axis'
                	    },
                	    legend: {
                	        orient : 'vertical',
                	        x : 'right',
                	        y : 'bottom',
                	        data:['发展指数']
                	    },              	
                	    polar : [
                	       {
                	           indicator : [
                	               { text: '成交', max: 100},
                	               { text: '分散度', max: 100},
                	               { text: '透明度', max: 100},
                	               { text: '流动性', max: 100},
                	               { text: '人气', max: 100},
                	               { text: '收益', max: 100}
                	            ]
                	        }
                	    ],
                	    calculable : true,
                	    series : [
                	        {
                	            name: '',
                	            type: 'radar',
                	            data : [
                	                {
                	                    value : redio,
                	                    name : '发展指数'
                	                },
                	 
                	            ]
                	        }
                	    ]
                	};
                
                option2 = {
                	    title : {
                	        text: feltitle,
                	    },
                	    tooltip : {
                	        trigger: 'axis'
                	    },
                	    legend: {
                	        data:[datasource,'平均值']
                	    },
                	    
                	    calculable : true,
                	    xAxis : [
                	        {
                	            type : 'category',
                	            data : ['舆情指数']
                	        }
                	    ],
                	    yAxis : [
                	        {
                	            type : 'value'
                	        }
                	    ],
                	    series : [
                	        {
                	            name:datasource,
                	            type:'bar',
                	            data:[feeling]
                	   
                	        },
                	        {
                	            name:'平均值',
                	            type:'bar',
                	            data:[avgfeeling]

                	        }
                	    ]
                	};
                
                option3 = {
                	    title : {
                	        text: '评论热度趋势对比'
                	    },
                	    tooltip : {
                	        trigger: 'axis'
                	    },
                	    legend: {
                	        data:[datasource,'p2p网站平均值']
                	    },              	    
                	    calculable : true,
                	    xAxis : [
                	        {
                	            type : 'category',
                	            boundaryGap : false,
                	            data : months
                	        }
                	    ],
                	    yAxis : [
                	        {
                	            type : 'value',
                	            axisLabel : {
                	                formatter: '{value} 人'
                	            }
                	        }
                	    ],
                	    series : [
                	        {
                	            name:datasource,
                	            type:'line',
                	            data:pop,
                	        },
                	        {
                	            name:'p2p网站平均值',
                	            type:'line',
                	            data:avgpop             	            
                	        }
                	    ]
                	};
                
                option4 = {
                	    title : {
                	        text: feldegtitle
                	    },
                	    tooltip : {
                	        trigger: 'axis'
                	    },
                	    legend: {
                	        data:['好感度','反感度']
                	    },              	    
                	    calculable : true,
                	    xAxis : [
                	        {
                	            type : 'category',
                	            boundaryGap : false,
                	            data : months
                	        }
                	    ],
                	    yAxis : [
                	        {
                	            type : 'value',
                	            axisLabel : {
                	                formatter: '{value} %'
                	            }
                	        }
                	    ],
                	    series : [
                	        {
                	            name:'好感度',
                	            type:'line',
                	            data:good                	            
                	        },
                	        {
                	            name:'反感度',
                	            type:'line',
                	            data:bad             	            
                	        }
                	    ]
                	};
                
                option5 = {
                	    title : {
                	        text: "成交量",
                	    },
                	    tooltip : {
                	        trigger: 'axis'
                	    },
                	    legend: {
                	        data:['成交量']
                	    },
                	    
                	    calculable : true,
                	    xAxis : [
                	        {
                	            type : 'category',
                	            data : datamonth
                	        }
                	    ],
                	    yAxis : [
                	        {
                	            type : 'value',
            	            	axisLabel : {
                	                formatter: '{value} 万元'
                	            }
                	        }
                	    ],
                	    series : [
                	        {
                	            name:"成交量",
                	            type:'bar',
                	            barGap:'500%',
                	            barWidth:2,
                	            data:volume
                	   
                	        }
                	    ]
                	};
                
                myChart.setOption(option);
                myChart2.setOption(option2);
                myChart3.setOption(option3);
                myChart4.setOption(option4);
                myChart5.setOption(option5);
            }

        );