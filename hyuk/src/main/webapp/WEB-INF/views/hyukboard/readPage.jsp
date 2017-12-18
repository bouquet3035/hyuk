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
<link href="/resources/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" />

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

	<section id="container"> <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
	<!--header start--> <header class="header black-bg">
	<div class="sidebar-toggle-box">
		<div class="fa fa-bars tooltips" data-placement="right"
			data-original-title="Toggle Navigation"></div>
	</div>
	<!--logo start--> <a href="index.html" class="logo"><b>DASHGUM
			FREE</b></a> <!--logo end-->
	<div class="nav notify-row" id="top_menu">
		<!--  notification start -->
		<ul class="nav top-menu">
			<!-- settings start -->
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="index.html#"> <i
					class="fa fa-tasks"></i> <span class="badge bg-theme">4</span>
			</a>
				<ul class="dropdown-menu extended tasks-bar">
					<div class="notify-arrow notify-arrow-green"></div>
					<li>
						<p class="green">You have 4 pending tasks</p>
					</li>
					<li><a href="index.html#">
							<div class="task-info">
								<div class="desc">DashGum Admin Panel</div>
								<div class="percent">40%</div>
							</div>
							<div class="progress progress-striped">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">40% Complete (success)</span>
								</div>
							</div>
					</a></li>
					<li><a href="index.html#">
							<div class="task-info">
								<div class="desc">Database Update</div>
								<div class="percent">60%</div>
							</div>
							<div class="progress progress-striped">
								<div class="progress-bar progress-bar-warning"
									role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 60%">
									<span class="sr-only">60% Complete (warning)</span>
								</div>
							</div>
					</a></li>
					<li><a href="index.html#">
							<div class="task-info">
								<div class="desc">Product Development</div>
								<div class="percent">80%</div>
							</div>
							<div class="progress progress-striped">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
									style="width: 80%">
									<span class="sr-only">80% Complete</span>
								</div>
							</div>
					</a></li>
					<li><a href="index.html#">
							<div class="task-info">
								<div class="desc">Payments Sent</div>
								<div class="percent">70%</div>
							</div>
							<div class="progress progress-striped">
								<div class="progress-bar progress-bar-danger" role="progressbar"
									aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
									style="width: 70%">
									<span class="sr-only">70% Complete (Important)</span>
								</div>
							</div>
					</a></li>
					<li class="external"><a href="#">See All Tasks</a></li>
				</ul></li>
			<!-- settings end -->
			<!-- inbox dropdown start-->
			<li id="header_inbox_bar" class="dropdown"><a
				data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
					<i class="fa fa-envelope-o"></i> <span class="badge bg-theme">5</span>
			</a>
				<ul class="dropdown-menu extended inbox">
					<div class="notify-arrow notify-arrow-green"></div>
					<li>
						<p class="green">You have 5 new messages</p>
					</li>
					<li><a href="index.html#"> <span class="photo"><img
								alt="avatar" src="/resources/assets/img/ui-zac.jpg"></span> <span
							class="subject"> <span class="from">Zac Snider</span> <span
								class="time">Just now</span>
						</span> <span class="message"> Hi mate, how is everything? </span>
					</a></li>
					<li><a href="index.html#"> <span class="photo"><img
								alt="avatar" src="/resources/assets/img/ui-divya.jpg"></span> <span
							class="subject"> <span class="from">Divya Manian</span> <span
								class="time">40 mins.</span>
						</span> <span class="message"> Hi, I need your help with this. </span>
					</a></li>
					<li><a href="index.html#"> <span class="photo"><img
								alt="avatar" src="/resources/assets/img/ui-danro.jpg"></span> <span
							class="subject"> <span class="from">Dan Rogers</span> <span
								class="time">2 hrs.</span>
						</span> <span class="message"> Love your new Dashboard. </span>
					</a></li>
					<li><a href="index.html#"> <span class="photo"><img
								alt="avatar" src="/resources/assets/img/ui-sherman.jpg"></span> <span
							class="subject"> <span class="from">Dj Sherman</span> <span
								class="time">4 hrs.</span>
						</span> <span class="message"> Please, answer asap. </span>
					</a></li>
					<li><a href="index.html#">See all messages</a></li>
				</ul></li>
			<!-- inbox dropdown end -->
		</ul>
		<!--  notification end -->
	</div>
	<div class="top-menu">
		<ul class="nav pull-right top-menu">
			<li><a class="logout" href="login.html">Logout</a></li>
		</ul>
	</div>
	</header> <!--header end--> <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
	<!--sidebar start--> <aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">

			<p class="centered">
				<a href="profile.html"><img
					src="/resources/assets/img/ui-sam.jpg" class="img-circle"
					width="60"></a>
			</p>
			<h5 class="centered">Marcel Newman</h5>

			<li class="mt"><a href="index.html"> <i
					class="fa fa-dashboard"></i> <span>Dashboard</span>
			</a></li>

			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-desktop"></i> <span>UI Elements</span>
			</a>
				<ul class="sub">
					<li><a href="general.html">General</a></li>
					<li><a href="buttons.html">Buttons</a></li>
					<li><a href="panels.html">Panels</a></li>
				</ul></li>

			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-cogs"></i> <span>Components</span>
			</a>
				<ul class="sub">
					<li><a href="calendar.html">Calendar</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="todo_list.html">Todo List</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-book"></i> <span>Extra Pages</span>
			</a>
				<ul class="sub">
					<li><a href="blank.html">Blank Page</a></li>
					<li><a href="login.html">Login</a></li>
					<li><a href="lock_screen.html">Lock Screen</a></li>
				</ul></li>
			<li class="sub-menu"><a class="active" href="javascript:;">
					<i class="fa fa-tasks"></i> <span>Forms</span>
			</a>
				<ul class="sub">
					<li class="active"><a href="form_component.html">Form
							Components</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-th"></i> <span>Data Tables</span>
			</a>
				<ul class="sub">
					<li><a href="basic_table.html">Basic Table</a></li>
					<li><a href="responsive_table.html">Responsive Table</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class=" fa fa-bar-chart-o"></i> <span>Charts</span>
			</a>
				<ul class="sub">
					<li><a href="morris.html">Morris</a></li>
					<li><a href="chartjs.html">Chartjs</a></li>
				</ul></li>

		</ul>
		<!-- sidebar menu end-->
	</div>
	</aside> <!--sidebar end--> <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
	<!--main content start-->

	<form role="form" method="post" action="modifyPage">
		<input type="hidden" name="bno" value="${boardDTO.bno}"> <input
			type="hidden" name="page" value="${cri.page}"> <input
			type="hidden" name="perPageNum" value="${cri.perPageNum}"> <input
			type="hidden" name="searchType" value="${cri.searchType}"> <input
			type="hidden" name="keyword" value="${cri.keyword}">
	</form>

	<section id="main-content"> <section class="wrapper">
	<h3>
		<i class="fa fa-angle-right"></i> Form Components
	</h3>

	<!-- BASIC FORM ELELEMNTS -->
	<div class="row mt">
		<div class="col-lg-12">
			<div class="form-panel">
				<h4 class="mb">
					<i class="fa fa-angle-right"></i> Form Elements
				</h4>
				
			
				<c:if test="${login.uid == boardDTO.writer}">
				<button class="modify btn btn-theme03" type="submit">수정 버튼</button>
				<button class="delete btn btn-theme03">삭제 버튼</button>
				</c:if>
				<button class="board btn btn-theme03" type="sumit">돌아가기</button>
				<br></br>
				<div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">제목 :</label>
					<div class="col-sm-10">
						<input name="title" type="text" class="form-control"
							readonly="readonly" value="${boardDTO.title}"> </input>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 col-sm-2 control-label">내용 :</label>
					<div class="col-sm-10">
						<input name="contents" type="text" size="50" class="form-control"
							readonly="readonly" value='${boardDTO.contents}' />
					</div>
				</div>
			

				<br></br>
				<div class="form-group">

                     <ul class="mailbox-attachments clearfix uploadedList"> 
								
                     </ul>
				</div>

				<div class="overlay"></div>




			</div>
		</div>
		<!-- col-lg-12-->
	</div>
	<!-- /row -->


	<div class="row mt">
		<div class="col-lg-12">
			<div class="form-panel">

				<c:if test="${not empty login}">
					<button class="btn btn-theme03" type="submit" id="replyAddBtn">입력
						버튼</button>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">작성자:</label> 
						<input type="text" class="form-control" id="newReplyWriter"placeholder="User ID" value="${login.uid}" readonly="readonly"> 
							<label class="col-sm-2 col-sm-2 control-label">댓글내용 :</label>
								 <input	type="text" class="form-control" id="newReplyText" placeholder="REPLY TEXT">
					</div>
				</c:if>

			</div>

		</div>
	</div>

	<!-- 댓글 조회 -->
	<div class="row mt">
		<div class="col-lg-12">
			<div class="form-panel">
				<div class="form-group">
					<table class="table table-striped table-advance table-hover">
						<thead>
							<tr>
								<th>#rno</th>
								<th>user id</th>
								<th>내용</th>
								<th></th>
							</tr>
						</thead>
						<tbody id="replies">
				

						</tbody>
					</table>


				</div>
			</div>
		</div>
	</div>
	- <!-- 댓글 조회END -->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<label class="col-sm-2 col-sm-2 control-label"   >rno:</label>
					<input	type="text" class="form-control" id="modirno" readonly="readonly">
					<label class="col-sm-2 col-sm-2 control-label">댓글내용 :</label>
					 <input	type="text" class="form-control" id="moditext">

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="modi">Save
						changes</button>
				</div>
			</div>
		</div>
	</div>



	<div class="text-center">
		<ul class="pagination">페이지네이션
		</ul>
	</div>



	</section> <!-- /wrapper --> </section><!-- /MAIN CONTENT --> <!--main content end--> <script
		src="https://code.jquery.com/jquery-3.2.1.js"
		integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
		crossorigin="anonymous"></script> 
		
	
	  <script type="text/javascript" src="/resources/js/upload.js"></script>	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	
    <script id=templateAttach type="text/x-handlebars-template">
	<li>
 	 <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
 	 <div class="mailbox-attachment-info">
		<span>
		<a  class="hlink" href="{{getLink}}" >{{fileName}}</a>
		<a class="hhlink"href="{{fullName}}" ><i class="fa fa-fw fa-remove"></i></a>
		</span>

 	 </div>
	</li>                
	</script>
		
	<script>
		var bno = ${boardDTO.bno};
	   	var template = Handlebars.compile($("#templateAttach").html());
		
		
		
		$.getJSON("/hyukboard/getAttach/"+bno,function(list){
			 console.log("bno:"+bno); 
			$(list).each(function(){				
				var fileInfo = getFileInfo(this);		
				var html = template(fileInfo);				
				 $(".uploadedList").append(html);
			});
			
		});
	</script>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<script>
      $(document).ready(function(){
    	  
    	  var formObj = $("form[role ='form']"); 
    	  
    	  console.log("frormObj:"+formObj) ; 
    	  
    	  $(".modify").on("click",function(){
    		  formObj.attr("action","/hyukboard/modifyboard"); 
    		  formObj.attr("method","get");
    		  formObj.submit();
    	  })
    	  
    	   $(".delete").on("click",function(){
    		  formObj.attr("action","/hyukboard/deleteboard"); 
    		 
    		  formObj.submit();
    	  })
    	  
    	     $(".board").on("click",function(){
    	      formObj.attr("method","get"); 
    	      formObj.attr("action","/hyukboard/list");
    		  formObj.submit(); 
    	  })
      });
      
      </script> <!-- 댓글 조회 리스트  --> <!-- 댓글 조회 리스트  --> <!-- 댓글 조회 리스트  --> <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
{{#each.}}
<tr>
    <td>{{rno}}</td>
	<td>{{replyer}}</td>
	 <td>{{replytext}}</td>
</tr>
{{/each}}		                          
</script>
<script>
function replylist() {
	var source =$("#template").html() ; 
	var template =Handlebars.compile(source) ; 
	var data =[] ; 
	
	var bno=${boardDTO.bno}

	$.getJSON("/replies/all/"+bno,function(arr){
		
		for(var i=0 ; i<arr.length;i++){
			
			 data.push({
				rno :arr[i].rno,
				replyer : arr[i].replyer, 
				replytext :arr[i].replytext
				});
			
		}
		   $(".replytable").append(template(data));
		
	});

};
replylist(); 
 

</script>  --> <script>
	
		var bno = ${boardDTO.bno};
		
		
		getPageList(1);
		
		function getAllList() {
			$.getJSON("/replies/all/" + bno,
							function(data) {
								//console.log(data.length);
								var str = "";
								$(data).each(function() {str += "<li data-rno='"+this.rno+"' class='replyLi'>"
															+ this.rno
															+ ":"
															+ this.replytext
															+ "</li>";
														});
								$("#replies").html(str);
										});
		}
		$("#replyAddBtn").on("click", function() {
			var replyer = $("#newReplyWriter").val();
			var replytext = $("#newReplyText").val();
			$.ajax({
				type : 'post',
				url : '/replies/',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					bno : bno,
					replyer : replyer,
					replytext : replytext
				}),
				success : function(result) {
					if (result == 'SUCCESS') {
						alert("등록 되었습니다.");
						//getAllList();
						 getPageList(replyPage);
					}
				}
			});
		});
	/* 	$("#replies").on("click", ".replyLi button", function() {
			var reply = $(this).parent();
			var rno = reply.attr("data-rno");
			var replytext = reply.text();
			$(".modal-title").html(rno);
			$("#replytext").val(replytext);
			$("#modDiv").show("slow");
		}); */
	$("#replies").on("click","#replyDelBtn ", function() {
			console.log("삭제버튼"); 
			
			var reply = $(this).parent().parent();
			console.log(reply); 
			var rno = reply.attr("data-rno");
			console.log(rno);
			var replytext = reply.text();
			console.log(replytext);
		
		  	$.ajax({
				type : 'delete',
				url : '/replies/' + rno,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "DELETE"
				},
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
					 alert("삭제 되었습니다.");
					/*	$("#modDiv").hide("slow"); */
						//getAllList();
						getPageList(replyPage);
					}
				}
			});   
		}); 
		
	
		
		$("#replies").on("click","#replyModBtn ", function(){
			 console.log("수정버튼");  
			   /* var rno = $(".modal-title").html();
			  var replytext = $("#replytext").val();  */
			 
				
				var reply = $(this).parent().parent();
			 	console.log( reply);  
				var rno = reply.attr("data-rno");
			 	console.log("rno"+ rno); 	
			 	var replytext = reply.attr("data-replytext");
				console.log("replytext:"+ replytext); 
			 	
			 	$("#moditext").val(replytext);
				$("#modirno").val(rno);
		
				
		
		});		 
		

/*  */

 	$("#modi").on("click", function(){
				var number = $("#modirno").val();	
				var rno = $("#modirno").val();	 	
 				var replytext = $("#moditext").val();
 				
 				

 		
 		
			 		console.log("수정 모달창");
			 		console.log("수정 모달 rno :"+ number);
			 		console.log("수정 모달 replytext :"+ replytext);
			 		
			 		  $.ajax({
			 			type:'put',
						url:'/replies/'+rno,
						headers: {"Content-Type": "application/json",
							      "X-HTTP-Method-Override": "PUT" },
					    data:JSON.stringify({replytext:replytext}), 
						dataType:'text', 
						success:function(result){
							console.log("result: " +result );
							getPageList(replyPage);
							},
							error:function(err){
								console.log("errrrrrror");
								cnosole.log(err);
							}      
						 
			 		  });
			 		
			 	});
			 	
 	/*  */
 	
 		
	
		
		function getPageList(page){
			
		  $.getJSON("/replies/"+bno+"/"+page , function(data){
			  
			  console.log("댓글 갯수"+data.list.length);
			  var str = "";
			  
			  $(data.list).each(function(){
				  console.log("게시물작성자:"+"${boardDTO.writer}");
				  console.log("로그이 id:"+"${login.uid}");
				  console.log("댓글 작성자:"+this.replyer);
				 
				  str += "<tr data-rno='"+this.rno+"'data-replytext='"+this.replytext+"'  class='replyLi'> "
				  +"<td>"+this.rno+"</td>"
				  +"<td>"+this.replyer+"</td>"
				  +"<td id='replytext'>"+this.replytext+"</td>"
				  +"<td>"
				  if(this.replyer==='${login.uid}'){
					 console.log("true");
					 
				   str += "<button class='btn btn-primary btn-xs ' id='replyModBtn' data-toggle='modal' data-target='#myModal'><i class='fa fa-pencil'></i></button>"
				      +"<button class='btn btn-danger btn-xs' id='replyDelBtn'><i class='fa fa-trash-o'></i></button>"
				  }
				  +"</td>"
				  +"</tr>";
				
			  });
			  
			  $("#replies").html(str);
			  
			  printPaging(data.pageMaker);
			  
		  });
	  }		
		
		  
		function printPaging(pageMaker){
			
			var str = "";
			
			if(pageMaker.prev){
				str += "<li><a href='"+(pageMaker.startPage-1)+"'> << </a></li>";
			}
			
			for(var i=pageMaker.startPage, len = pageMaker.endPage; i <= len; i++){				
					var strClass= pageMaker.cri.page == i?'class=active':'';
				  str += "<li "+strClass+"><a href='"+i+"'>"+i+"</a></li>";
			}
			
			if(pageMaker.next){
				str += "<li><a href='"+(pageMaker.endPage + 1)+"'> >> </a></li>";
			}
			$('.pagination').html(str);				
		}
		
		var replyPage = 1;
		
		$(".pagination").on("click", "li a", function(event){
			
			event.preventDefault();
			
			replyPage = $(this).attr("href");
			
			getPageList(replyPage);
			
		});
		
		
		/* 삭제 버튼 클릭시  */
		$(".delete").on("click", function(){
			var replyCnt =  $(".hhlink").html();	
			
			if(replyCnt > 0 ){
				alert("댓글이 달린 게시물을 삭제할 수 없습니다.");
				return;
			}	
			var arr = [];
			$(".uploadedList .hhlink").each(function(index){
				 arr.push($(".hhlink").attr("href"));
			});
			console.log("댓글 갯수"+arr);
			if(arr.length > 0){
				$.post("/deleteAllFiles",{files:arr}, function(){
					
				});
			}

			formObj.attr("action","/hyukboard/list");
			formObj.submit();

			
		});
	  		
	  		
	</script>
	 <script>
/* $(document).ready(function(){
	var str = "";
	function test(){
	
		console.log("test.....");
		 str += "<span>test</span>" ;
		 $(".replyLi").html(str);
	}
	test();

});  */

</script> <!--footer start--> <!--       <footer class="site-footer"> -->
	<div class="text-center">
		2014 - Alvarez.is
		<!--  <a href="form_component.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a> -->
	</div>
	</footer> <!--footer end--> </section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="/resources/assets/js/jquery.js"></script>

	<script src="/resources/assets/js/jquery-1.8.3.min.js"></script>

	<script src="/resources/assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="/resources/assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="/resources/assets/js/jquery.scrollTo.min.js"></script>
	<script src="/resources/assets/js/jquery.nicescroll.js"
		type="text/javascript"></script>

	<script src="/resources/assets/js/jquery.sparkline.js"></script>
	<!--common script for all pages-->
	<script src="/resources/assets/js/common-scripts.js"></script>

	<!--script for this page-->


	<!--common script for all pages-->
	<script src="/resources/assets/js/common-scripts.js"></script>

	<script type="text/javascript"
		src="/resources/assets/js/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript"
		src="/resources/assets/js/gritter-conf.js"></script>

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