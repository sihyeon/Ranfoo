<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    boolean logined = false;
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
    <head>
		<meta charset="UTF-8" />
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
    </head>
    
    <body>
        <div class="container">
			<!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="http://tympanus.net/Tutorials/CSS3SlidingImagePanels/">
                    <strong>&laquo; RanFoo Meeting: </strong>Copyright by sihyeon
                </a>
                
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
			<header>
				<h1 id="headline">Ran.Food</h1>
				<h2>Welcom to the Random Food Meeting</h2>
				<p class="codrops-demos">
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
					<p>RanFoo를 하기 위해서는</p>
					<code> ① Subway Map에서 자신이 원하는 역을 골라 들어갑니다.<br />
                           ② 자신이 원하는 식사 시간에 신청합니다.<br />
                           ③ 신청된 시간대의 채팅방에서 새로운 사람들과 세부적인 <br />약속을 정하고 만나면 끝!</code>
				</div>
				<div class="clr"></div>
			</section>
		
        	<section class="sub" id="sub2">
				<div class="example">
					<h3 id="example2">Join in the SubwayMap</h3>
				</div>
				<div class="code">
					<h4>Click the Line</h4>
					<p>호선 이미지에 링크 들어감</p>		
					<% if (logined) %>			
					<a href="http://www.naver.com">네이버</a>
					<% else %>
					<a href="#" id="show">네이버</a>
					<code>			<a href="Line1-1.html"><img src="images/1.png"alt="1호선"></a>
                    &nbsp;<a href="Line2-2.html"><img src="images/2.png"alt="2호선"></a>
                    &nbsp;<a href="Line3-3.html"><img src="images/3.png"alt="3호선"></a>
                    &nbsp;<a href="Line4-4.html"><img src="images/4.png"alt="4호선"></a>
                    &nbsp;<a href="Line5-5.html"><img src="images/5.png"alt="5호선"></a>
                    &nbsp;<a href="Line6-6.html"><img src="images/6.png"alt="6호선"></a>
                    &nbsp;<a href="Line7-7.html"><img src="images/7.png"alt="7호선"></a>
                    &nbsp;<a href="Line8-8.html"><img src="images/8.png"alt="8호선"></a>
                    &nbsp;<a href="Line9-9.html"><img src="images/9.png"alt="9호선"></a>
                    <br /><a href="Line신분당.html"><img src="images/신분당선.png"alt="신분당선"></a>
                    &nbsp;<a href="Line공항.html"><img src="images/공항선.png"alt="공항선"></a>
                    &nbsp;<a href="Line중앙.html"><img src="images/중앙선.png"alt="중앙선"></a>
                    &nbsp;<a href="Line의정부.html"><img src="images/의정부선.png"alt="의정부선"></a>
                    &nbsp;<a href="Line경의.html"><img src="images/경의선.png"alt="경의선"></a>
                    &nbsp;<a href="Line경춘.html"><img src="images/경춘선.png"alt="경춘선"></a>
                    <br /><a href="Line에버.html"><img src="images/에버라인.png"alt="에버랜드선"></a>
                    &nbsp;<a href="Line수인.html"><img src="images/수인선.png"alt="수인선"></a>
                    &nbsp;<a href="Line분당.html"><img src="images/분당선.png"alt="분당선"></a>
                    &nbsp;<a href="Line인천.html"><img src="images/인천선.png"alt="인천선"></a>
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
                    <p>개인정보, 소개글, Join 내역 확인</p>
					<code>마이페이지 링크</code>
				</div>
				<div class="clr"></div>
			</section>
			<section class="sub" id="sub4">
				<div class="example">
					<h3 id="example4">Administer Page</h3>
				</div>
				<div class="code">
					<h4>Contact Us</h4>
					<p>We are watching 24hours </p>
					<code>부적절한 사용자 신고, 고객센터 개념.</code>
					<p class="buttons">
						<a id="button_set" href="#"><span>Notice</span><span>공지사항1<br />공지사항2</span></a>
						<a id="button_anim1" href="#"><span>RanFoo 911</span><span>부적절한 사용자 신고<br /> 이유와 아이디 기재<br /> 미확정 (시간되면 하고 안되면 뺌)</span></a>
						<a id="button_anim2" href="#"><span>Contact WAAP</span><span>SIHYEON@gmail.com<br /> 010.3027.1867<br /> 경기도 성남시 분당구 </span></a>
					</p>
				</div>
				<div class="clr"></div>
			</section>
			
            <div class="clr"></div>
        </div>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.arctext.js"></script>
		<script type="text/javascript" src="http://www.google.com/jsapi"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script src="./jquery.avgrund.js"></script>
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
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.0";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<script>
	$(function() {
		$('#show').avgrund({
			height : 200,
			holderClass : 'custom',
			showClose : true,
			showCloseText : 'close',
			onBlurContainer : '.container',
			template : '<p>Welcome to the Ranfoo. You need to login with facebook to join us.</p>'
			+'<div>' 
			+ '<class="fb-login-button" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="true">'
			+'</div>'
		});
	});
	</script>
</body>
</html>