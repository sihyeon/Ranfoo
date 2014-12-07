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
   				alert("�α����� �ʿ��� ���� �Դϴ�."); 
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
					<p>RanFoo�� �ϱ� ���ؼ���</p>
					<code> �� Subway Map���� �ڽ��� ���ϴ� ���� ��� ���ϴ�.<br />
                           �� �ڽ��� ���ϴ� �Ļ� �ð��� ��û�մϴ�.<br />
                           �� ��û�� �ð����� ä�ù濡�� ���ο� ������ �������� <br />����� ���ϰ� ������ ��!</code>
				</div>
				<div class="clr"></div>
			</section>
            
			<section class="sub" id="sub2">
				<div class="example">
					<h3 id="example2">Join in the SubwayMap</h3>
				</div>
				<div class="code">
					<h4>Click the Line</h4>
				  <p>Ranfoo �� ����ö �뼱�� �����ϼ���.</p>
					<code>
										<% if (session.getAttribute("id") == null ) { %>
													<a href="loginpage.jsp" onclick="loginalert()"><img src="images/1.png"alt="1ȣ��"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/2.png"alt="2ȣ��"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/3.png"alt="3ȣ��"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/4.png"alt="4ȣ��"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/5.png"alt="5ȣ��"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/6.png"alt="6ȣ��"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/7.png"alt="7ȣ��"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/8.png"alt="8ȣ��"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/9.png"alt="9ȣ��"></a>
                    <br /><a href="loginpage.jsp" onclick="loginalert()"><img src="images/11.png"alt="�źд缱"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/12.png"alt="���׼�"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/13.png"alt="�߾Ӽ�"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/14.png"alt="�����μ�"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/15.png"alt="���Ǽ�"></a>
                    <br /><a href="loginpage.jsp" onclick="loginalert()"><img src="images/16.png"alt="���ἱ"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/17.png"alt="�������弱"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/18.png"alt="���μ�"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/19.png"alt="�д缱"></a>
                    &nbsp;<a href="loginpage.jsp" onclick="loginalert()"><img src="images/20.png"alt="��õ��"></a>
                    
                    <% } else { %>
													<a href="Line1-1.html"><img src="images/1.png"alt="1ȣ��"></a>
                    &nbsp;<a href="Line2-2.html"><img src="images/2.png"alt="2ȣ��"></a>
                    &nbsp;<a href="Line3-3.html"><img src="images/3.png"alt="3ȣ��"></a>
                    &nbsp;<a href="Line4-4.html"><img src="images/4.png"alt="4ȣ��"></a>
                    &nbsp;<a href="Line5-5.html"><img src="images/5.png"alt="5ȣ��"></a>
                    &nbsp;<a href="Line6-6.html"><img src="images/6.png"alt="6ȣ��"></a>
                    &nbsp;<a href="Line7-7.html"><img src="images/7.png"alt="7ȣ��"></a>
                    &nbsp;<a href="Line8-8.html"><img src="images/8.png"alt="8ȣ��"></a>
                    &nbsp;<a href="Line9-9.html"><img src="images/9.png"alt="9ȣ��"></a>
                    <br /><a href="Line11.html"><img src="images/11.png"alt="�źд缱"></a>
                    &nbsp;<a href="Line12.html"><img src="images/12.png"alt="���׼�"></a>
                    &nbsp;<a href="Line13.html"><img src="images/13.png"alt="�߾Ӽ�"></a>
                    &nbsp;<a href="Line14.html"><img src="images/14.png"alt="�����μ�"></a>
                    &nbsp;<a href="Line15.html"><img src="images/15.png"alt="���Ǽ�"></a>
                    <br /><a href="Line16.html"><img src="images/16.png"alt="���ἱ"></a>
                    &nbsp;<a href="Line17.html"><img src="images/17.png"alt="�������弱"></a>
                    &nbsp;<a href="Line18.html"><img src="images/18.png"alt="���μ�"></a>
                    &nbsp;<a href="Line19.html"><img src="images/19.png"alt="�д缱"></a>
                    &nbsp;<a href="Line20.html"><img src="images/20.png"alt="��õ��"></a>
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
                    <p>��������, �Ұ���, Join ���� Ȯ��</p>
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
					<code>Ranfoo�����ʹ� ȸ������ �� ���� ����� ���Ͽ� <br />24�ð� ����ϰ� �ֽ��ϴ�. <br />�������� �ϴ��� E-mail�� �ǰ��� �����ּ���.</code>
					<p class="buttons">
						<a id="button_anim1" href="mailto:WAAP911@gmail.com"><span>RanFoo 911</span><span>�������� ����� �Ű� &amp; ��Ÿ ����<br /> ������ ���̵� �����Ͽ� WAAP911@gmail.com ���� �Ű��ϼ���.<br /></span></a>
						<a id="button_anim2" ><span>Contact WAAP</span><span>WAAP911@gmail.com&nbsp;&nbsp; 010.3027.1867<br />��⵵ ������ �д籸 </span></a>
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