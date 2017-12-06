<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page session="false" %>
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
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Forms</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="form_component.html">Form Components</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Data Tables</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="basic_table.html">Basic Table</a></li>
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
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Basic Table Examples</h3>
				<div class="row">
				
	                  <div class="col-md-12">
	                  
	                  	  <div class="content-panel">
	                  	  	  <h4><i class="fa fa-angle-right"></i> Basic Table</h4>
	                  	  	  
	                  	  
	                			  <a href="/dashboard/registerboard"><button class= "btn btn-theme02" type="button" style ="float:right; margin-right:1.5em;">등록 버튼 </button></a>	  
						
		                      <table class="table">
		              
		                    
		                      
		                      <div class ='box-body'>
		                      
		                      <select name ="searchType">
		                      		<option value="n"
		                      			<c:out value ="${cri.searchType == null ? 'selected' :'' }"/>>
		                      		---</option> 
		                      		<option value="t"
		                      			<c:out value ="${cri.searchType eq 't' ? 'selected' :'' }"/>>
		                      		Title</option> 
		                      		<option value="c"
		                      			<c:out value ="${cri.searchType eq 'c' ? 'selected' :'' }"/>>
		                      		Content</option> 
		                      		<option value="w"
		                      			<c:out value ="${cri.searchType eq 'w' ? 'selected' :'' }"/>>
		                      		Writer</option> 
		                      		<option value="tc"
		                      			<c:out value ="${cri.searchType eq 'tc' ? 'selected' :'' }"/>>
		                      		Title OR Content</option> 
		                      		<option value="cw"
		                      			<c:out value ="${cri.searchType eq 'cw' ? 'selected' :'' }"/>>
		                      		Content OR Writer</option> 
		                      		<option value="tcw"
		                      			<c:out value ="${cri.searchType eq 'tcw' ? 'selected' :'' }"/>>
		                      		Title OR Content OR Writer</option> 

		                      </select>
		                      
		                      <input type="text" name='keyword' id="keywordInput" value ="${cri.keyword}">
		                     	<button id='searchBtn'>Search</button> 
		                     	<button id='newBtn'>New Board</button> 
		                       
		                      
		                      </div>
		                      
		                      
		                          <thead>
			                          <tr>
			                              
			                              <th>bno</th>
			                              <th>제목</th>
			                              <th>작성날짜</th>
			                              
			                          </tr>
		                          </thead>
		                          <tbody>
		                          
		                      <c:forEach items="${list}" var="boardDTO" >
			                          <tr>
			                          	<td> ${boardDTO.bno}</td>
			                          	<td><a href="/hyuk/readPage?${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardDTO.bno}">
			                          	${boardDTO.title}</a></td>
			                          	<td>${boardDTO.regdate }</td>
			                        	<%-- <td><fmt:formatDate pattern="yyyy-MM-dd" value="${boardDTO.regdate}"/><td>	  --%>
			                          </tr>
		                          </c:forEach>
		                          </tbody>
		                      </table>

				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li><a href="list?page=${pagaMaker.makeSearch(pageMaker.startPage-1)}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<li
								<c:out value ="${pageMaker.cri.page==idx? 'class=active' :'' }"/>>
								<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a href="list${pageMaker.makeSearch(pageMaker.endPage +1)}">&raquo;</a>
						</c:if>
					</ul>
				</div>
				
			</div><! --/content-panel -->
	                  </div><!-- /col-md-12 -->
                  
	               
              </div><!-- /row -->
              
              


		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->
      
     

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="basic_table.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>
  
  <script
	  src="https://code.jquery.com/jquery-3.2.1.js"
	  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
	  crossorigin="anonymous"></script>

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
    
  <script>
      //custom select box

  /*     $(function(){
          $('select.styled').customSelect();
      }); */
      
      var result ="${msg}"; 
      
      if(result=='success'){
    	  alert("처리가 완료되었습니다.");
      }
      
      

  </script>
  
  <script>
  $(document).ready(
		  function(){
			  
		$('#searchBtn').on('click',function(event){
			console.log("searchBtn 버튼 테스트") ;
			
			alert("search...........btn");
			
  				 self.location = "list"
	    		  +'${pageMaker.makeQuery(1)}'
	    		  +'&searchType='
	    		  +$("select option:selected").val() 
	    		  +"&keyword="+encodeURIComponent($('#keywordInput').val()) ;  
		
			
		
		});
		
		$('#newBtn').on("click",function(evt){
			self.location = "register" ; 
		}); 		  
		  
	});
  </script>

  </body>
  </html>