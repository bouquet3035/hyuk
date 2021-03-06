<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

   
    <title>DASHGUM - Bootstrap Admin Template</title>
<!-- Bootstrap core CSS -->
    <link href="/resources/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="/resources/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="/resources/assets/lineicons/style.css">    
        
    <!-- Custom styles for this template -->
    <link href="/resources/assets/css/style.css" rel="stylesheet">
    <link href="/resources/assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>


  <body>
<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;
  
}
</style>
  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>DASHGUM FREE</b></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                    <!-- settings start -->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-tasks"></i>
                            <span class="badge bg-theme">4</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 4 pending tasks</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">DashGum Admin Panel</div>
                                        <div class="percent">40%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Database Update</div>
                                        <div class="percent">60%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Product Development</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Payments Sent</div>
                                        <div class="percent">70%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                            <span class="sr-only">70% Complete (Important)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- settings end -->
                    <!-- inbox dropdown start-->
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="/resources/assets/img/ui-zac.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Zac Snider</span>
                                    <span class="time">Just now</span>
                                    </span>
                                    <span class="message">
                                        Hi mate, how is everything?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="/resources/assets/img/ui-divya.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Divya Manian</span>
                                    <span class="time">40 mins.</span>
                                    </span>
                                    <span class="message">
                                     Hi, I need your help with this.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="/resources/assets/img/ui-danro.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dan Rogers</span>
                                    <span class="time">2 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Love your new Dashboard.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="/resources/assets/img/ui-sherman.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dj Sherman</span>
                                    <span class="time">4 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Please, answer asap.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="login.html">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.html"><img src="/resources/assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Marcel Newman</h5>
              	  	
                  <li class="mt">
                      <a href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>UI Elements</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="general.html">General</a></li>
                          <li><a  href="buttons.html">Buttons</a></li>
                          <li><a  href="panels.html">Panels</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Components</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="calendar.html">Calendar</a></li>
                          <li><a  href="gallery.html">Gallery</a></li>
                          <li><a  href="todo_list.html">Todo List</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Extra Pages</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="blank.html">Blank Page</a></li>
                          <li><a  href="login.html">Login</a></li>
                          <li><a  href="lock_screen.html">Lock Screen</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Forms</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="form_component.html">Form Components</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Data Tables</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="basic_table.html">Basic Table</a></li>
                          <li><a  href="responsive_table.html">Responsive Table</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>Charts</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="morris.html">Morris</a></li>
                          <li><a  href="chartjs.html">Chartjs</a></li>
                      </ul>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      
       <form id="modiattach" role="form" method="post" action="modifyboard" >
      	
		<input type="hidden" name="bno" value="${param.bno}">
		<input type="hidden" name="page" value="${param.page}">
		<input type="hidden" name="perPageNum" value="${param.perPageNum}">
		<input type="hidden" name="searchType" value="${param.searchType}">      	
     	<input type="hidden" name="keyword" value="${param.keyword}">
       
      
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Form Components</h3>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Form Elements</h4>

               		<button    class="modify btn btn-theme03">수정하기 </button>
              		 <button  class="board btn btn-theme03" type="submit">돌아가기 </button>
                  	   <br></br>
                          <div class="form-group">
                            <div class="col-sm-10">
                              <label class="col-sm-2 col-sm-2 control-label" >제목 :</label>                        
                                  <input name= "title" type="text" class="form-control"  value="${boardDTO.title}">                                
                              </div>
                          </div>
                           <div class="form-group">
                             <div class="col-sm-10">
                              <label class="col-sm-2 col-sm-2 control-label" >내용 :</label>
                                  <input  name= "contents" type="text"  size="50"class="form-control"  value='${boardDTO.contents}'>
                              </div>
                          </div>
 							 
 							<br></br><br></br>
                            	<div class="fileDrop"></div>    
                                               
                           		<ul class="mailbox-attachments clearfix uploadedList"></ul>
                		    
                            <div class="overlay"></div>
                      
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
             </form>  
             
		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <script src="https://code.jquery.com/jquery-3.2.1.js"
		  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
		  crossorigin="anonymous"></script>
  <script>
      $(document).ready(function(){
    	  
    	  var formObj = $("form[role ='form']"); 
    	  
    	  console.log(formObj) ; 
    	  
    	  $(".modify").on("click",function()
    		{
    		  //formObj.submit();
    		});
    	  
    	  
    	  
   	     $(".board").on("click",function(){
   		  self.location ="/hyuk/list?page=${cri.page}&perPageNum=${cri.perPageNum}"
   				  +"searchType=${cri.searchType}&keyword=${cri.keyword}"; 
   				  
    	  });
      });
      
      </script>
        <script type="text/javascript" src="/resources/js/upload.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
      <script id="template" type="text/x-handlebars-template">
      <li>
 	 	<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
 		 <div class="mailbox-attachment-info">
			<span>
				<a  href="{{getLink}}">{{fileName}} <i class="ffa fa-check "></i></a>  
				<a class="hhlink" href="{{fullName}}" > <i class="fa fa-trash-o"> </i></a>
			</span>
 	 	</div>
	</li>
      </script>
      <script >

      var template = Handlebars.compile($("#template").html());
      
      var bno = ${boardDTO.bno};
	  var template = Handlebars.compile($("#template").html());

      $(".fileDrop").on("dragenter dragover", function(event){
    	console.log("1"); 
      	event.preventDefault();
      });

      $(".fileDrop").on("drop", function(event){
    		console.log("2"); 
      	event.preventDefault();
      	
      	var files = event.originalEvent.dataTransfer.files;
      	
      	var file = files[0];
      	
      	var formData = new FormData();
      	
      	formData.append("file", file);
      	
      	$.ajax({
      		url: '/uploadAjax',
      		  data: formData,
      		  dataType:'text',
      		  processData: false,
      		  contentType: false,
      		  type: 'POST',
      		  success: function(data){
       			   var fileInfo = getFileInfo(data);
      			  
      			  var html = template(fileInfo);
      			  
      			  $(".uploadedList").append(html);
      		  }
      	});
       });

      /* 수정 버튼  누루기전 이전에 있던 사진 파일 정보 가져오기  */  
 	  var bno = ${boardDTO.bno};
 	  var template = Handlebars.compile($("#template").html());
 	  $.getJSON("/hyukboard/getAttach/"+bno,function(list){
		console.log("bno:"+bno); 
			$(list).each(function(){				
				var fileInfo = getFileInfo(this);		
				var html = template(fileInfo);				
				 $(".uploadedList").append(html);
				});
		
		});  
      /* 사진 첨부 삭제 버튼 클릭시 이벤트 처리  */
      $(".uploadedList ").on("click",".hhlink",function(event){
    	  event.preventDefault();
    	  var that = $(this); 
    	
    	
     	   $.ajax({
      			url:"/deleteFile",
      			type:"post",
      			data:{fileName:$(".hhlink").attr("href")},
      			dataType:"text", 
      			success:function(result){
      				if(result=='deleted'){
      					that.parent().parent().parent().remove(); 
      					
      				}
      				
      			}
      			
      		}); 
       
      });     
      
      
      
      /* 수정 버튼 눌렀을 시 */
      
      $("#modiattach").submit(function(event){
       	event.preventDefault();

       var that = $(this);
      	console.log(that);
      	var str ="";

      	$(".uploadedList li").each(function(index){
      		
      		 str += "<input type='hidden' name='files["+index+"]' value='"+$(".hhlink").attr("href") +"'> ";
    		
      	});
      	 
      	that.append(str);
      	console.log("that");
      	console.log(that);
      	that.get(0).submit();  
      });
      </script>
      
      
      
      
      
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="form_component.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

 <!-- js placed at the end of the document so the pages load faster -->
    <script src="/resources/assets/js/jquery.js"></script>
    
    <script src="/resources/assets/js/jquery-1.8.3.min.js"></script>
    
    <script src="/resources/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="/resources/assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="/resources/assets/js/jquery.scrollTo.min.js"></script>
    <script src="/resources/assets/js/jquery.nicescroll.js" type="text/javascript"></script>

    <script src="/resources/assets/js/jquery.sparkline.js"></script>
    <!--common script for all pages-->
    <script src="/resources/assets/js/common-scripts.js"></script>

    <!--script for this page-->
    
    
    <!--common script for all pages-->
    <script src="/resources/assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="/resources/assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="/resources/assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="/resources/assets/js/sparkline-chart.js"></script>    
	<script src="/resources/assets/js/zabuto_calendar.js"></script>	
  <!-- <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script> -->

  </body>
</html>