@charset "UTF-8";
/* CSS Document */

/**
* Custom CSS by PurevB.com
*/
.popupbody li > a,
.popupbody li > label {
	padding:8px 10px;
	line-height:18px;
}
.formsubmit label {
	color:#3a3a3a;
}
.formsubmit label {
	color:#3a3a3a;
}
.posts, .postlist, #postlist  {
margin:0;
padding:0;
}

/* Misc Resets
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
img {
	border:0;
}
.verticalAlign {
	vertical-align:middle;
}
.clearfix:after {
	content: ".";
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0;
}
.clearfix {
	display: inline-block;
}
html[xmlns] .clearfix {
	display: block;
}
* html .clearfix {
	height: 1%;
}

/************************************************************************/
*{ -moz-box-shadow: none !important; -webkit-box-shadow: none !important; }

#wgo .blocksubhead {
border-top:0;
}
#sidebar_home .block {
position:relative;
padding:0;
}
#sidebar_home .blockrow, #sidebar_home .blockbody {
	-moz-border-radius: 0 !important;
	-webkit-border-radius: 0 !important;
	-moz-border-radius-bottomleft: 8px !important;
	-moz-border-radius-bottomright: 8px !important;
	-webkit-border-bottom-left-radius: 8px !important;
	-webkit-border-bottom-right-radius: 8px !important;
}
#sidebar_home .underblock {
background:none;
}
#sidebar_home #sidebar {
background:none;
padding:0;
border:0;
}
#sidebar_home .blocksubhead {
background:url(images/styles/DeFraction/style_red/sidebarHeadBG.png) no-repeat top left;
height:18px;
width:234px;
padding:12px;
margin:0;
color:#fff;
font-size:15px;
text-transform:upercase;
}
#sidebar_home .blocksubhead img {
display:none;
}
#sidebar_home .blocksubhead .collapse img {
display:inline;
}
#sidebar_container > ul {
	width: 99%;
}
.threadbit .sticky, .threadbit .nonthread, .threadbit .nonsticky, .threadbit .deleted, .threadbit .discussionrow, .threadbit .ignored, .wgo_block .wgo_subblock,
.forumbit_nopost .forumbit_nopost .forumrow, .forumbit_post .forumrow {
	border-bottom: 1px dashed #d1d1d1;
}

#forums *, #wgo *, #forumbits * {
	-moz-border-radius: 0 !important;
	-webkit-border-radius: 0 !important;
}
#fb_headerbox {
	padding-right:5px;
}
.wgo_block {
	margin:0;
}
.navbar {
	-moz-border-radius-bottomleft: 0 !important;
	-moz-border-radius-bottomright: 0 !important;
	-webkit-border-bottom-left-radius: 0 !important;
	-webkit-border-bottom-right-radius: 0 !important;
}

.announcements {
	margin-top:10px;
}
.highlight {
	background-image:none;
}
.forumbit_nopost.row1 .forumrow, .forumbit_post.row1 .forumrow {
	background: rgb(255, 255, 255) none   ;
	border:1px solid #d5d5d5;
	border-top:0;
}
.forumbit_nopost.row2 .forumbit_nopost .forumrow, .forumbit_post.row2 .forumrow {
	background: #f6f6f6;
	border-top:0;
	border:1px solid #d5d5d5;
}
.threadbit.row1 .nonsticky{
	background: #ffffff none   ;
}
.threadbit.row2 .nonsticky{
	background: #f6f6f6;
}
.threadbit .sticky .alt {

}
.threadbit.row1 .nonsticky .alt {
	background:#f9f9f9;
}
.threadbit.row2 .nonsticky .alt {
	background:#efefef;
}
.navlinksBox {
	text-align: center;
	color: #5d5d5d;
	font-size: 14px;
        font-weight:700;
        margin-top: 8px;
        margin-bottom: 0;
        width:100%;
        clear:both;
}
.bodyWrap {
	background:#fff;
	margin:0 2px;	
}
.body_wrapper {
	padding:10px 0;
	margin:0;
}
.above_body {
	padding:0;
	margin:0;
}
.threadbit .sticky, .threadbit .nonthread, .threadbit .nonsticky, .threadbit .deleted, .threadbit .discussionrow, .threadbit .ignored {
	border-top:0;
}

/* Page Wrapper
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
body {
	width:auto;
	min-width:990px;
	max-width:auto;
	margin: 0;
}
.pageWrap {
	margin:0px 0px 0px 0px;
	width:auto;
	position:relative;
}
.bodyWrapper {
	margin:0px 0px 0px 0px;
	width:auto;
}

/* Top Bar
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
#topBar {
	background:url(images/styles/DeFraction/style_red/topBarBG.gif) repeat-x top left;
	height:39px;
	font-size:12px;	
	color:#fff;
	padding:3px 27px 0 27px;
	position:relative;
}
.socialBox {
	float:left;
	line-height:39px;
}
.socialBox img {
	vertical-align:middle;
	border:0;
}
.socialBoxText {
	float:left;
	line-height:39px;
	padding-right:5px;
}

/* Header
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
.above_body {
	background:none;
}
.doc_header {
	background:url(images/styles/DeFraction/style_red/headerBG.gif) repeat-x top left;
	height:110px;
	position:relative;
}
.headerWrap {
	background:url(images/styles/DeFraction/style_red/headerWrapBG.gif) no-repeat top left;
	height:110px;
	position:relative;
}
.logo {
	float:left;
	height:110px;
	padding-right:19px;
}
.slogan {
	background:url(images/styles/DeFraction/style_red/sloganSplit.gif) no-repeat top left;
	float:left;
	font-size:14px;
	text-transform:uppercase;
	height:110px;
	line-height:110px;	
	color:#b3b3b3;
	padding-left:21px;
}
.headerBanner {
	position:absolute;
	top:23px;
	right:28px;
}

/* Login Box - Header
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
#loginBox {
	width:316px;
	height:90px;
	position:absolute;
	top:0;
	right:25px;
	padding:20px 0 0 0;
	color:#ffffff;
	font-size:9px;
}
#loginBox ul {
	list-style:none;
	padding:0;
	margin:0;
}
#loginBox li {
	float:left;
}
.loginBox {
	float:left;
}
.loginBox ul {
	list-style:none;
	padding:0;
	margin:0;
}
.loginBar li {
	float:left;
}
.loginBoxInput {
	background: url(images/styles/DeFraction/style_red/loginBoxInput.gif) no-repeat top left;
	width:125px;
	height:29px;
}
.loginInput {
	background:transparent;
	border:0;
	color: #ffffff;
	width:115px; 
	height:29px;
	line-height:29px;
	padding:0 5px;
}
.cb_cookieuser_navbar{
	position: relative;
	top: 2px;
}
.inputPad .loginBoxInput {

}
.inputPad {
	padding-right:6px;
}
.submitPad {
	padding:0;
}
.submitPad input {
}

.loginText {
	text-transform:uppercase;
	padding-bottom:8px;
}
.memberLinks {
	padding-top:6px;
	float:left;
	text-transform:uppercase;
}
.memberLinks a:link, .memberLinks a:visited {
	color:#f0d3a0;
}
.memberLinks a:hover {
	color:#c02525;
}
#loginBox .rememberMe {
	float:right;
	font-size:12px;
	color:#a4a4a4;
	padding-top:3px;
}
#loginBox .rememberMe input {
	vertical-align: baseline;
}
.cb_cookieuser_navbar{
	position: relative;
	top: 2px;
}

/* Login Box - Top Bar
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
.loginLeft #fb_loginbtn {position:relative;top:4px;}
.memberBox {
	float:right;
	height:29px;
	line-height:29px;
	color:#fff;
	font-size:12px;
	padding-top:4px;
}
.memberBox ul {
	list-style:none;
	padding:0;
	margin:0;
}
.memberBox li {
	float:left;
	margin:0;	
	padding:0 3px;	
}
.loginBoxInput2 {
	background: url(images/styles/DeFraction/style_red/loginInput.png) no-repeat top left;
	width:139px;
	height:29px;
	float:left;
}
.loginInput2 {
	border:0;
	background:transparent;
	color: #ffffff;
	padding:0 5px;
	width:129px;
	height:29px;
	line-height:29px;
	margin:0;
}
.memberBox .rememberMe {}
.memberBox .rememberMe input {
	vertical-align: baseline;
}
.inputPad2 .loginBoxInput {
	margin-top:0;
}
.inputPad2 {
	padding:0 4px;	
}
.submitPad2 input {
	margin:0;
	padding:0;
}
.loginTxt2 {
	padding-left:5px;
	color:#fff;
	font-weight:700;
}
.loginLeft {
	float:left;
}

/* Content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
#contentMain {
	background:#fff;
	padding:10px 28px;
}
.welcomeText {
	background:url(images/styles/DeFraction/style_red/welcomeText.gif) no-repeat top left;
	width:769px;
	height:51px;
	position:relative;
	margin-bottom:15px;
}
.welcomeRegister {
	position:absolute;
	top:0;
	right:97px;
}
.restore a:link, .restore a:visited {
	color:#e12b00;
	font-weight:700;
}

/* Footer Main
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
#footerMain {
	padding:25px 27px;
	line-height:18px;
	color:#898989;
	clear:both;
}
#footerMain a:link, #footerMain a:visited {
	color:#ffe9c1;
	font-weight:700;
}
#footerMain a:hover {
	color:#fff;
}
.copyright {
	float:left;
}
.bannerBox {
	background:url(images/styles/DeFraction/style_red/bannerBoxBG.gif) no-repeat top left;
	float:right;
	width:468px;
	height:60px;
	padding:4px;
}

/* Footer Bar
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
#footerBar {
	background:#393939 url(images/styles/DeFraction/style_red/footerBarBG.gif) no-repeat top center;
	height:58px;
	padding:0 20px;
}
.footerLinks {
	float:left;	
}
.footerLinks ul {
	list-style:none;
	padding:0;
	margin:0;
}
.footerLinks li {
	float:left;
	padding:22px 8px 0 8px;
}
.footerLinks a:link, .footerLinks a:visited {
	color:#fff;
	font-size:15px;
	font-weight:700;
}
.footerLinks a:hover {
	color:#c02525;
}
.skinSelect{
float:right;
padding-top:17px;
margin:0;
}
.footer {
margin:0;
padding:0;
}



/*************************************************/
/* TOP MEMBER BAR*/
#toplinks, .toplinks {
	text-align:left;
	line-height:20px;
	padding-top:8px;
	right:0;
}
#toplinks .isuser {
	float:left;
}
#toplinks .welcomelink {
	font-weight:700;
}
.toplinks ul.isuser .notifications .popupbody {

	border: 1px solid #242424; /* makes it look consistent with the popup background */
}
.toplinks .notifications a.popupctrl {	
	padding-top: 3px;
	padding-bottom: 3px;
	padding-left: 4px;
	padding-right: 12px;

-webkit-border-radius: 5px;
-moz-border-radius: 5px;
border-radius: 5px;
}

.toplinks .notifications a.popupctrl:hover, .toplinks .nonotifications a.popupctrl:hover, .toplinks .nonotifications a.popupctrl.active, .toplinks ul.isuser li a:hover {
	-moz-border-radius: 5px !important;
	-webkit-border-radius: 5px !important;
}

.memberBox .welcomeUser {
	font-weight:700;
	font-size:11px;
	float:left;
}
.memberBox .toplinks {
	padding:2px 0 0 3px;
}
.memberBox .toplinks {
	padding:2px 0 0 3px;
}

/* Navbar
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
.navbar {
	background:url(images/styles/DeFraction/style_red/navBG.gif) repeat-x top left;
	position:relative;
	height:76px;
	font:   12px arial, helvetica, sans-serif;
	color:#c3c3c3;
	width:100%;
	padding:0;
	margin:0;
}
.navbarWrap {
	padding:0 12px;
}
#navtabs li.selected ul.floatcontainer {
	margin-top:7px;
}
#navtabs li.selected ul.floatcontainer a:link, #navtabs li.selected ul.floatcontainer a:visited {
	line-height:27px;
	height:27px;
}
.navbar a { color:#c3c3c3; }
.navbar a:hover { color:#fff; }

.navtabs ul li:first-child {
	text-indent: 2px;
}
.navtabs {
	padding-left:0;
}
.navtabs ul {
	position:absolute;
	top:42px;
	left:0px;
	width:100%;
/* This is to fix RTL menu issue under Opera */
        direction:ltr;
}
.navtabs li {
	float:left;
}
.navtabs li li {
	background:none;
}

.navtabs ul li {
	border-right: 0;
	position: relative;
}
.navtabs li a {
	height:42px;
	line-height:42px;
}
.navtabs li a.navtab {
	display:block;
	min-width:60px;
	width:auto !important;
	width:60px;
	_min-width:75px;
	_width:auto !important;
	_width:75px;
	text-align:center;
	color:#c3c3c3;
	font-size:15px;
	text-decoration:none;
	line-height:42px;
	height:42px;
	padding:0 10px;
	text-transform:uppercase;
	font-weight:400;
border-right:1px solid #575757;
}
.navtabs li a.navtab:hover {
	background:#870404 url(images/styles/DeFraction/style/navBG_hover.gif) repeat center top;
	color:#fff;

}
.navtabs li.selected {
	color:#fff;
	height:42px;
}
.navtabs li.selected a.navtab {
	color:#fff;
	position:relative;
	top:-4px;
	padding-top:4px;
	z-index:10;
border-right:1px solid #575757;
}
.navtabs li.selected li a,
.navbar_advanced_search li a {
	text-decoration:none;
	font:   12px arial, helvetica, sans-serif;
	line-height:27px;
}
.navtabs li.selected li {
	padding:0 5px;
}
.navtabs li.selected li li {
	padding:0 2px;
}
.navtabs li.selected li a {
	color:#1a1617;
	font-weight:400;
	padding:2px 5px;
}

.navbar_advanced_search li {
	height: 27px;
	display:block;
	clear:both;
}

.navbar_advanced_search li a {
	color:#c3c3c3;
}

.navbar_advanced_search li a:hover {
	color:#fff;
	text-decoration:none;
}

.navtabs li.selected li a:hover {
	color:#b91c1c;
	text-decoration:none;
}

.navtabs li.selected .popupbody li > a {
	padding:0pxpx 10px;
	text-indent: 0;
	color: rgb(0, 0, 0);
}

.navtabs li.selected li a.popupctrl {
	-moz-border-radius:3px;
	-webkit-border-radius:3px;	
	border:solid 1px transparent;
	_border: none;
	background:transparent url(images/styles/DeFraction/misc/arrow.png) no-repeat right center;
	padding-right:15px;
        _background-image:url('images/styles/DeFraction/misc/arrow.gif');
	color:#1a1617;
}

.navtabs li.selected li:hover a.popupctrl.active,
.navtabs li.selected li a.popupctrl.active,
.navtabs li.selected li a:hover.popupctrl {
	color:#fff;
}

/* Breadcrumb
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
.breadcrumb {
	background:#f4f4f4 none   ;
	height:22px;
	padding:6px 10px 6px 10px;
	color:#242424;
	border-top:1px solid #dedede;
	margin-bottom:10px;
}
.breadcrumb .navbit > a, .breadcrumb .lastnavbit span {
	border:1px solid transparent;
}
.breadcrumb .navbit a:link, .breadcrumb .navbit a:visited {
	color:#242424;
}
.breadcrumb .navbit a:hover {
	background:#b91c1c;
	color:#fff;
	border:1px solid transparent;
}

/*************************************************/
/* TCAT BAR */
.tcat {
	background:url(images/styles/DeFraction/style_red/tcatBG.gif) repeat-x top left;
	color: #fff;
	height:43px;
	clear:both;
	margin-top: 8px;
	float: left;
	border:0;
	padding:0;
	text-transform:uppercase;
	width: 100%;
}
.tcatLeft {
	background:url(images/styles/DeFraction/style_red/tcatLeft.gif) no-repeat top left;
	height:43px;
}
.tcatRight {
	background:url(images/styles/DeFraction/style_red/tcatRight.gif) no-repeat top right;
	height:43px;
}
.tcat2 {
	background:url(images/styles/DeFraction/style_red/tcat2BG.gif) repeat-x top left;
}
.tcat2 .tcatLeft {
	background:url(images/styles/DeFraction/style_red/tcat2Left.gif) no-repeat top left;
}
.tcat2 .tcatRight {
	background:url(images/styles/DeFraction/style_red/tcat2Right.gif) no-repeat top right;
}
.tcat .forumtitle {
	font-weight:700;

}
.tcat .tcatDesc {
	font-size:11px;
	font-weight:400;
}
.tcat h2 {
	padding-left:16px;
	font: bold 15px arial, helvetica, sans-serif;
	line-height:43px;
	float:left;
	font-weight:700;
}
.tcat a:link, .tcat a:visited {
	color:#fff;
}
.tcat a:hover {

}
.tcat .tcatCollapse {
	float:right;
	position:absolute;
	top:13px;
	right:14px;
}

.theadBottom {
	background:#e3e3e3;
	height:5px;
	font-size:0;
	width: 100%;
	border-left:1px solid #cacaca;
	border-right:1px solid #cacaca;
	clear:both;
}

/* tcat Thread List Controls - Forumdisplay */
.tcat_threadlist_controls {
	float:right;
	padding-right:8px;
}
.forumdisplaypopups, #forumdisplaypopups {
	clear:both;
}
.tcat_threadlist_controls h6 {

	padding:0;
	display:block;
	font-size:11px;
}
.forumdisplaypopups a.popupctrl, .forumdisplaypopups.popupgroup .popupmenu a.popupctrl,
.postlist_popups h6 a.popupctrl, .postlist_popups.popupgroup .popupmenu h6 a.popupctrl,
.postlist_popups h6 a.firstunread, .postlist_popups.popupgroup .popupmenu h6 a.firstunread {
	background:none;
	display:block;
	_display:43px;
	height:43px;
	line-height:43px;
	font-family:arial, helvetica, sans-serif;
	font-weight:700;
	font-size:12px;
	color:#fff;
	padding:0 7px;
	border: 0;
	float: left;
	clear: right;
}
.forumdisplaypopups a:hover.popupctrl, .forumdisplaypopups.popupgroup .popupmenu a:hover.popupctrl,
.postlist_popups h6 a:hover.popupctrl, .postlist_popups.popupgroup .popupmenu h6 a:hover.popupctrl,
.postlist_popups h6 a:hover.firstunread, .postlist_popups.popupgroup .popupmenu h6 a:hover.firstunread{
	border: 0;
	color:#fff;
	text-decoration:underline;
}
#postlist_popups a, .postlist_popups a {
	color: #fff;
	_border: none;
}

#postlist_popups a:hover, .postlist_popups a:hover {
	color: #fff;
	text-decoration:underline;
}
#postlist_popups .popupmenu:hover a.popupctrl, #postlist_popups .popupmenu:hover .popupctrl a.popupctrl.active, .postlist_popups .popupmenu:hover a.popupctrl, .postlist_popups .popupmenu:hover .popupctrl a.popupctrl.active {
	border: 0;
}

#postlist_popups ul li {
	color: #3E3E3E;
}
#postlist_popups ul li a, .postlist_popups ul li a {
	color: #3E3E3E;
	_border: none;
}

#postlist_popups ul li a:hover, .postlist_popups ul li a:hover {
	color: #3E3E3E;
	text-decoration:underline;
}

#forumdisplaypopups ul a, .forumdisplaypopups ul a {
	color: #3e3e3e;
}
.tcat .toolsmenu {
	background:none;
	border:none;
	margin:0;
}
.toolsmenu div {
	border:0;
}
.tcat .toolsmenu ul {
	padding:0;
}
.tcat .toolsmenu .popupgroup a.popupctrl, .tcat .toolsmenu .popupgroup .popupmenu a.popupctrl, .tcat .toolsmenu .nopopupgroup li a {
	padding:0 7px;
	_display:43px;
	height:43px;
	line-height:43px;
}

/*************************************************/
/* THEAD BAR*/

.thead_bar .theadrow {
	background:#2a2a2a url(images/styles/DeFraction/style/theadBG.gif) repeat-x center top;
	display:block;
	width: 100%;
	float: left;
	position:relative;
	font:  normal 13px arial, helvetica, sans-serif;
	border:1px solid #363636;
	border-bottom:1px solid #2a2a2a;
	color:#b6b6b6;
	line-height:32px;
}

.thead_bar .padding {
	padding-left:12px;
}
.thead_bar .forumhead span.forumlastpost {
	width: 23%;
}
.thead_bar .theadrow .forumdata  {
	float: left;
}
.thead_bar {
	float: left;
	position:relative;
	width: 100%;
	display:block;
}
.thead_bar .forumhead .forumtitle {
	width: 76%;
}
.thead_bar .foruminfo {
	width: 53%;
	min-width: 30%;
	float: left;
	clear: right;
}
.thead_bar .foruminfo .forumdata {
	padding: 0;
	width: 100%;
	_width: 99%;
}
.thead_bar .forumstats, .thead_bar .forumstats_2 {
	display: block;
	float: left;
	clear: right;
	width: 16%;
	margin-right: 2%;
}
.thead_bar .foruminfo .forumdata .datacontainer {
	float: left;
	width: 86%;
	padding:0;
	padding-left: 68px;
}
.thead_bar .forumactionlinks {
	width: 5%;
	display:block;
	float:left;
	clear:right;
}

.thead_bar .forumactionlink {
/* values based on icon size */
	display:block;
	width:18px;

	overflow:hidden;
	float: right;
	clear: left;
	background:transparent none no-repeat;
	position: relative;

}
.thead_bar .forumstats li, .thead_bar .forumstats_2 li{
	font-size: 12pxpx;
	text-align: right;
	padding-right: 20px;
	display:block;
}
.thead_bar .forumlastpost {
	display:block;
	float: left;
	clear: right;
}
.thead_bar .theadrow .forumlastpost {
	width: 22%;
}
.forumbitBody {
	padding-right:2px;
	clear:both;
}

/*threadlisthead and posthead*/
.threadlist {
margin-top:0;
}
#threadlist .threadlisthead {
	background:#2a2a2a url(images/styles/DeFraction/style/theadBG.gif) repeat-x center top;
	display:block;
	width: 100%;
	float: left;
	position:relative;
	border:0;
	border:1px solid #363636;
	border-bottom:1px solid #2a2a2a;
	color:#b6b6b6;
	padding:5px 0px 5px 0px;
	font:  normal 13px arial, helvetica, sans-serif;
	margin: 0;
}

#threadlist .threadlisthead a, #threadlist .threadlisthead a:hover {
	color: #b6b6b6;
}
.postbit .posthead, .postbitlegacy .posthead, .eventbit .eventhead {
	background:#2a2a2a url(images/styles/DeFraction/style/theadBG.gif) repeat-x center top;
	clear:both;
	display:block;
	float: left;
	width: 100%;
	color:#b6b6b6;
	margin: -1px -1px 0;
	font:  normal 13px arial, helvetica, sans-serif;
	padding:6px 0;
	border:0;
	border:1px solid #363636;
	border-bottom:1px solid #2a2a2a;
}
#posts .posthead a:link, #posts .posthead a:visited {
	color:#b6b6b6;
}
#posts .posthead a:hover {
	color:#b6b6b6;
}
#posts .posthead .time, #posts .nodecontrols {
	color:#b6b6b6;
}


#postlist .userinfo {
	padding-top:10px;
}
.username_container {
	padding:2px 0;
	text-align:center;
}
.username_container .username strong {
	font-size: 16pt;
	font-weight:400;
}
.usertitle, .rank {
	text-align:center;
}
.usercenter {
	padding-top:5px;
	text-align:center;
}
.userinfo_extra dt {
	padding:6px 3px 0 10px;
	margin:0;
	color: ;
	font-weight:700;
}
.userinfo_extra dd {
	background: #fff;
	color: #242424;
	border: 1px solid #dedede;
	padding:3px 0 3px 0;
	margin:0;
	margin-top: 2px;
}
/* center avatar, username, title, rank in postbit legacy 4.0.2 */
.postbitlegacy .userinfo .username_container, .postbitlegacy .userinfo .rank, .postbitlegacy .userinfo .usertitle {text-align:center;}
.postbitlegacy .userinfo .postuseravatar, .postbitlegacy .userinfo .postuseravatar img {float:none; text-align:center;}
.postbitlegacy .userinfo .postbit_reputation,.postbitlegacy .userinfo .postbit_reputation img {float:none; text-align:center;}


.postbit, .postbitlegacy, .eventbit {
	margin-bottom: 0;
}
.bbcode_container .bbcode_quote_container {
	background:none;
}

.forum_info_block, .forum_info_form {
	background:none;
}
.postfoot {
	border: 1px solid #dedede;
	border-bottom:0;
	border-right:0;
}
.postfootWrap {
	border-right: 1px solid #dedede;
}

#thread_info a.collapse {
	position: absolute;
	top: 9px;
}

/* Postbit Align Username and Avatar Center
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
.postbitlegacy .userinfo .username_container, .postbitlegacy .userinfo .rank, .postbitlegacy .userinfo .usertitle {text-align:center;}
.postbitlegacy .userinfo .postuseravatar, .postbitlegacy .userinfo .postuseravatar img  {float:none; text-align:center;}
.postbitlegacy .userinfo .usertitle {display: block; float:none; text-align:center; clear: both;}

/* Bottom Bar
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
.bottomBar{
	background:url(images/styles/DeFraction/style_red/bottomBarBG.gif) repeat-x top left;
	height:20px;
	font-size:0;
	clear:both;
}
.bottomBarLeft {
	background:url(images/styles/DeFraction/style_red/bottomBarLeft.gif) no-repeat top left;
	height:20px;
	font-size:0;
}
.bottomBarRight {
	background:url(images/styles/DeFraction/style_red/bottomBarRight.gif) no-repeat top right;
	height:20px;
	font-size:0;
}

/* Global Search
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
.searchBox {
	position:absolute;
	top:6px;
	right:27px;
	height:36px;
	line-height:36px;
}

.searchBoxInput {
	background: url(images/styles/DeFraction/style_red/searchInput.gif) no-repeat top left;
	width:139px;
	height:29px;
	float:left;
}
.searchinput {
	border:0;
	background:transparent;
	color: #828282;
	padding:0 5px;
	width:129px; 
	height:29px;
	line-height:29px;
}
.searchButton {
	float:left;
	padding-left:9px;
}
.searchBox .searchBox_advanced_search {
	position:absolute;
	top:38px;
	right:0;
}
.searchBox .searchBox_advanced_search a:link, .searchBox .searchBox_advanced_search a:visited {
	color:#1a1617;
}

/* CMS & Blog CSS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
h1.header, h2.header { 
	text-transform:capitalize; 
}

/* Forum Home
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
.forumrow .forumtitle a:link, .forumrow .forumtitle a:visited {
	color:#3a3a3a;
	font:   14px arial, helvetica, sans-serif;
}
.forumrow .forumtitle a:hover{
	color:#c63600;
}
.forumrow .lastposttitle a:link, .forumrow .lastposttitle a:visited {
	color:#c02525;
	font-weight:700;
}
.forumrow .lastposttitle a:hover{
	color:#3a3a3a;
}
#forums .lastpostby a.username {
	color:;
}
#forums .lastpostby a.username:hover {
	color:;
}
.forumdescription {
	color:;
	padding:4px 0;
}
.notices {
	background:none;
}
#notices .restore {
	background:#ffefb6 none   ;
	border:1px solid #ebd27b;
	color:#3c3a22;
	line-height:16px;
	padding:8px 10px 8px 10px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}
#notices .restore a {
	font-weight:700;
}

/* Advanced Search
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
#searchtypeswitcher {
	border-bottom:4px solid #323232;
}
#searchtypeswitcher li a {
	background-color:#555;
	color:#FFF;
}

#searchtypeswitcher li.selected a {
	background-color:#323232;
}

#searchtypeswitcher li a:hover {
	background-color:#323232;
}

/* vBulletin Groups
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
li.sgicon .maincol, #sidebar li.sgicon .maincol,#thumbnails li {
	background: #fff none   ;
}
#sidebar li.sgicon .maincol .textcontrol {
	color: #424242;
}
#content .grouplist .blockrow > li, #content .grouplist .blockrow > ol, #content .grouplist .blockrow > div {
	background: #f4f4f4 none   ;
	border: 1px solid #dedede;
}
#pictures .blockbody .blockrow, #group_discussion_inlinemod_form .blockbody .blockrow {
	border: 1px solid #dedede;
}
.toolsmenu {
	background: #e3e3e3 url(images/misc/blog/top-highlight.png) repeat-x left top;
	_background-image: none;
	border: 1px solid #c8c8c8;
}
.toolsmenu div {
	border-top:none;
	color: #424242;
}
.toolsmenu h1 a {
	color: #424242;
}
.toolsmenu .popupgroup a.popupctrl, .toolsmenu .popupgroup .popupmenu a.popupctrl, .toolsmenu .nopopupgroup li a {
	color: #424242;
}

.toolsmenu .popupgroup a.popupctrl, .toolsmenu .popupgroup .popupmenu a.popupctrl, .toolsmenu .popupgroup .popupmenu:hover a.popupctrl, .toolsmenu .popupgroup .popupmenu:hover .popupctrl a.popupctrl.active {
	color: #424242;
}
dl.blogbit, tr.blogbit,
dl.blogcatbit, tr.blogcatbit {
	background: #fff none   ;
}