<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<html lang="UTF-8">
    <head>
		<meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>Start and enjoy your RanFoo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="arctext.js" />
        <meta name="keywords" content="arc, letters, words, rotate, warp, circle, curve, along, path, jquery, css3, transform" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/test.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
				<link href='http://fonts.googleapis.com/css?family=Montserrat|Sail|Concert+One' rel='stylesheet' type='text/css' />
   			
   			<script launguage='JAVASCRIPT'>
   			function loginalert(){
<<<<<<< HEAD:project_JSP/WebContent/index.jsp
   				alert("로그인이 필요한 서비스 입니다."); 
=======
   				alert("濡쒓렇�씤�씠 �븘�슂�븳 �꽌鍮꾩뒪 �엯�땲�떎."); 
>>>>>>> c4d13ddbd9c2b0c8ffcf9c29fe088699818d215a:project JSP/WebContent/Index.jsp
   			}
   			</script>
   			
    <body>
     <div class="container">
			<!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="http://tympanus.net/Tutorials/CSS3SlidingImagePanels/">
                    <strong> RanFoo Meeting: </strong>Copyright by WAAP </a>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
			<header>
				<h1 id="headline">Ran.Food</h1>
			<h2>Welcome to the Ranfoo Meeting</h2>
				<p class="codrops-demos">
				<% if(session.getAttribute("id") == null) { %>
            <a href="loginpage.jsp">Login</a>
        <% } else { %>
        		<a href="SessionLogout.jsp">Logout</a>
        <% } %>
					<a href="#sub1">How to use</a>
					<a href="#sub2">Subway Map</a>
					<a href="#sub3">My Page</a>
					<a href="#sub4">Administer</a>
				</p>
			</header>
            
			<section class="main">				
				<div id="arc-wrapper" class="arc-wrapper">
					<h3>JUST &diams; JOIN &diams; IN THE &diams; MAP</h3>
					<h4>MJUWAAP</h4>
				</div>
			</section>
            
			<section class="sub" id="sub1">
				<div class="example">
					<h3 id="example1">How to use RanFoo ?</h3>
				</div>
				<div class="code">
					<h4>Follow this Script</h4>
					<p>RanFoo瑜� �븯湲� �쐞�빐�꽌�뒗</p>
					<code> �몺 Subway Map�뿉�꽌 �옄�떊�씠 �썝�븯�뒗 �뿭�쓣 怨⑤씪 �뱾�뼱媛묐땲�떎.<br />
                           �몼 �옄�떊�씠 �썝�븯�뒗 �떇�궗 �떆媛꾩뿉 �떊泥��빀�땲�떎.<br />
                           �몾 �떊泥��맂 �떆媛꾨���쓽 梨꾪똿諛⑹뿉�꽌 �깉濡쒖슫 �궗�엺�뱾怨� �꽭遺��쟻�씤 <br />�빟�냽�쓣 �젙�븯怨� 留뚮굹硫� �걹!</code>
				</div>
				<div class="clr"></div>
			</section>
            
			<section class="sub" id="sub2">
				<div class="example">
					<h3 id="example2">Join in the SubwayMap</h3>
				</div>
				<div class="code">
					<h4>Click the Line</h4>
<<<<<<< HEAD:project_JSP/WebContent/index.jsp
				  <p>Ranfoo 할 지하철 노선을 선택하세요.</p>
					<code>
										<% if (session.getAttribute("id") == null ) { %>
													<a href="loginpage.jsp" onclick="loginalert()"><img src="images/1.png"alt="1호선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/2.png"alt="2호선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/3.png"alt="3호선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/4.png"alt="4호선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/5.png"alt="5호선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/6.png"alt="6호선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/7.png"alt="7호선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/8.png"alt="8호선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/9.png"alt="9호선"></a>
                    <br /><a href="loginpage.jsp" onclick="loginalert()"><img src="images/11.png"alt="신분당선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/12.png"alt="공항선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/13.png"alt="중앙선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/14.png"alt="의정부선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/15.png"alt="경의선"></a>
                    <br /><a href="loginpage.jsp" onclick="loginalert()"><img src="images/16.png"alt="경춘선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/17.png"alt="에버랜드선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/18.png"alt="수인선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/19.png"alt="분당선"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/20.png"alt="인천선"></a>
                    
                    <% } else { %>
													<a href="Line1-1.html"><img src="images/1.png"alt="1호선"></a>
                    &nbsp;<a href="Line2-2.html"><img src="images/2.png"alt="2호선"></a>
                    &nbsp;<a href="Line3-3.html"><img src="images/3.png"alt="3호선"></a>
                    &nbsp;<a href="Line4-4.html"><img src="images/4.png"alt="4호선"></a>
                    &nbsp;<a href="Line5-5.html"><img src="images/5.png"alt="5호선"></a>
                    &nbsp;<a href="Line6-6.html"><img src="images/6.png"alt="6호선"></a>
                    &nbsp;<a href="Line7-7.html"><img src="images/7.png"alt="7호선"></a>
                    &nbsp;<a href="Line8-8.html"><img src="images/8.png"alt="8호선"></a>
                    &nbsp;<a href="Line9-9.html"><img src="images/9.png"alt="9호선"></a>
                    <br /><a href="Line11.html"><img src="images/11.png"alt="신분당선"></a>
                    &nbsp;<a href="Line12.html"><img src="images/12.png"alt="공항선"></a>
                    &nbsp;<a href="Line13.html"><img src="images/13.png"alt="중앙선"></a>
                    &nbsp;<a href="Line14.html"><img src="images/14.png"alt="의정부선"></a>
                    &nbsp;<a href="Line15.html"><img src="images/15.png"alt="경의선"></a>
                    <br /><a href="Line16.html"><img src="images/16.png"alt="경춘선"></a>
                    &nbsp;<a href="Line17.html"><img src="images/17.png"alt="에버랜드선"></a>
                    &nbsp;<a href="Line18.html"><img src="images/18.png"alt="수인선"></a>
                    &nbsp;<a href="Line19.html"><img src="images/19.png"alt="분당선"></a>
                    &nbsp;<a href="Line20.html"><img src="images/20.png"alt="인천선"></a>
=======
				  <p>Ranfoo �븷 吏��븯泥� �끂�꽑�쓣 �꽑�깮�븯�꽭�슂.</p>
					<code>
										<% if (session.getAttribute("id") == null ) { %>
													<a href="loginpage.jsp" onclick="loginalert()"><img src="images/1.png"alt="1�샇�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/2.png"alt="2�샇�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/3.png"alt="3�샇�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/4.png"alt="4�샇�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/5.png"alt="5�샇�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/6.png"alt="6�샇�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/7.png"alt="7�샇�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/8.png"alt="8�샇�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/9.png"alt="9�샇�꽑"></a>
                    <br /><a href="loginpage.jsp" onclick="loginalert()"><img src="images/11.png"alt="�떊遺꾨떦�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/12.png"alt="怨듯빆�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/13.png"alt="以묒븰�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/14.png"alt="�쓽�젙遺��꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/15.png"alt="寃쎌쓽�꽑"></a>
                    <br /><a href="loginpage.jsp" onclick="loginalert()"><img src="images/16.png"alt="寃쎌텣�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/17.png"alt="�뿉踰꾨옖�뱶�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/18.png"alt="�닔�씤�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/19.png"alt="遺꾨떦�꽑"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/20.png"alt="�씤泥쒖꽑"></a>
                    
                    <% } else { %>
													<a href="Line1-1.html"><img src="images/1.png"alt="1�샇�꽑"></a>
                    &nbsp;<a href="Line2-2.html"><img src="images/2.png"alt="2�샇�꽑"></a>
                    &nbsp;<a href="Line3-3.html"><img src="images/3.png"alt="3�샇�꽑"></a>
                    &nbsp;<a href="Line4-4.html"><img src="images/4.png"alt="4�샇�꽑"></a>
                    &nbsp;<a href="Line5-5.html"><img src="images/5.png"alt="5�샇�꽑"></a>
                    &nbsp;<a href="Line6-6.html"><img src="images/6.png"alt="6�샇�꽑"></a>
                    &nbsp;<a href="Line7-7.html"><img src="images/7.png"alt="7�샇�꽑"></a>
                    &nbsp;<a href="Line8-8.html"><img src="images/8.png"alt="8�샇�꽑"></a>
                    &nbsp;<a href="Line9-9.html"><img src="images/9.png"alt="9�샇�꽑"></a>
                    <br /><a href="Line11.html"><img src="images/11.png"alt="�떊遺꾨떦�꽑"></a>
                    &nbsp;<a href="Line12.html"><img src="images/12.png"alt="怨듯빆�꽑"></a>
                    &nbsp;<a href="Line13.html"><img src="images/13.png"alt="以묒븰�꽑"></a>
                    &nbsp;<a href="Line14.html"><img src="images/14.png"alt="�쓽�젙遺��꽑"></a>
                    &nbsp;<a href="Line15.html"><img src="images/15.png"alt="寃쎌쓽�꽑"></a>
                    <br /><a href="Line16.html"><img src="images/16.png"alt="寃쎌텣�꽑"></a>
                    &nbsp;<a href="Line17.html"><img src="images/17.png"alt="�뿉踰꾨옖�뱶�꽑"></a>
                    &nbsp;<a href="Line18.html"><img src="images/18.png"alt="�닔�씤�꽑"></a>
                    &nbsp;<a href="Line19.html"><img src="images/19.png"alt="遺꾨떦�꽑"></a>
                    &nbsp;<a href="Line20.html"><img src="images/20.png"alt="�씤泥쒖꽑"></a>
>>>>>>> c4d13ddbd9c2b0c8ffcf9c29fe088699818d215a:project JSP/WebContent/Index.jsp
                    <% } %>
       		</code>
				</div>
                <div class="clr"></div>
			</section>
            
			<section class="sub" id="sub3">
                <div class="example">
					<h3 id="example3">Modify your Page</h3>
				</div>
				<div class="code">
					<h4>You can edit your page</h4>
<<<<<<< HEAD:project_JSP/WebContent/index.jsp
                    <p>개인정보, 소개글, Join 내역 확인</p>
=======
                    <p>媛쒖씤�젙蹂�, �냼媛쒓��, Join �궡�뿭 �솗�씤</p>
>>>>>>> c4d13ddbd9c2b0c8ffcf9c29fe088699818d215a:project JSP/WebContent/Index.jsp
                    <% if(session.getAttribute("id") == null) { %>
                    	<code><a href="loginpage.jsp" onclick="loginalert()">Go to MY PAGE</a></code>
                    <% } else { %>
                    	<code><a href="Mypage.jsp">Go to MY PAGE</a></code>
                    <% } %>
                    </div>
				<div class="clr"></div>
			</section>
            
			<section class="sub" id="sub4">
			<div class="example">
                <h4 id="example4"><img src="images/ranfootrans.png"></h4>
                </div>
				<div class="code">
					<h4>Contact Us</h4>
					<p>We are watching 24hours </p>
					<code>Ranfoo怨좉컼�꽱�꽣�뒗 �쉶�썝�뱾�쓽 �뜑 �굹��� �궗�슜�쓣 �쐞�븯�뿬 <br />24�떆媛� ���湲고븯怨� �엳�뒿�땲�떎. <br />�뼵�젣�뱺吏� �븯�떒�쓽 E-mail濡� �쓽寃ъ쓣 蹂대궡二쇱꽭�슂.</code>
					<p class="buttons">
						<a id="button_anim1" href="mailto:WAAP911@gmail.com"><span>RanFoo 911</span><span>遺��쟻�젅�븳 �궗�슜�옄 �떊怨� &amp; 湲고�� 臾몄쓽<br /> �씠�쑀��� �븘�씠�뵒 湲곗옱�븯�뿬 WAAP911@gmail.com �쑝濡� �떊怨좏븯�꽭�슂.<br /></span></a>
						<a id="button_anim2" ><span>Contact WAAP</span><span>WAAP911@gmail.com&nbsp;&nbsp; 010.3027.1867<br />寃쎄린�룄 �꽦�궓�떆 遺꾨떦援� </span></a>
					</p>
				</div>
				</section>
				
			<div class="clr"></div>
        </div>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.arctext.js"></script>
		<script type="text/javascript" src="http://www.google.com/jsapi"></script>
		<script type="text/javascript">
			var $headline = $('#headline').hide();
		
			var $word1		= $('#arc-wrapper').find('h3').hide();
			var $word2		= $('#arc-wrapper').find('h4').hide();
			
			var $example1	= $('#example1').hide();
			var $example2	= $('#example2').hide();
			var $example3	= $('#example3').hide();
			var $example4	= $('#example4').hide();
			
			google.load('webfont','1');
			
			google.setOnLoadCallback(function() {
				WebFont.load({
					google		: {
						families	: ['Montserrat','Concert One']
					},
					fontactive	: function(fontFamily, fontDescription) {
						init();
					},
					fontinactive	: function(fontFamily, fontDescription) {
						init();
					}
				});
			});
			
			function init() {
			
				$headline.show().arctext({radius: 400});
					
				$word1.show().arctext();
				$word2.show().arctext({radius: 148, dir: -1});
				
				$example1.show().arctext({radius: 300});
				$example2.show().arctext({radius: 400, dir: -1});
				$example3.show().arctext({radius: 500, rotate: false});
				$example4.show().arctext({radius: 300});
				
				$('#button_set').on('click', function() {
					$example4.arctext('set', {
						radius		: 140,
						dir			: -1
					});
					return false;
				});
				$('#button_anim1').on('click', function() {
					$example4.arctext('set', {
						radius		: 300, 
						dir			: -1,
						animation	: {
							speed	: 300,
							easing  : 'ease-out'
						}
					});
					return false;
				});
				$('#button_anim2').on('click', function() {
					$example4.arctext('set', {
						radius		: 200, 
						dir			: 1, 
						animation	: {
							speed	: 300
						}
					});
					return false;
				});
				$('#button_reset').on('click', function() {
					$example4.arctext('set', {
						radius		: 300, 
						dir			: 1
					});
					return false;
				});
			
			};
		</script>
    </body>
</html>
