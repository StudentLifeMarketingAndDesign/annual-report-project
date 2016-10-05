<!DOCTYPE html>
<!--[if IE 8]>         <html lang="en-US" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US" class="no-js"> <!--<![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- CSS -->
	<link rel="stylesheet" href="{$ThemeDir}/css/master.css" />

	<!-- JS -->
	<!--[if lt IE 9]>
		<script src="annual-report-project/js/plugins/respond.min.js"></script>
	<![endif]-->
	
	<script type="text/javascript" src="//use.typekit.net/ocu2ncd.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
	<script src="annual-report-project/js/plugins/modernizr-2.5.3.min.js"></script>

	<!-- Open Graph -->
	<meta property="og:type"	 content="article"> 
	<meta property="og:url"		 content="$AbsoluteLink">
	<meta property="og:site_name"	 content="Division of Student Life Annual Report">
	<meta property="og:image"	 content="$Photo.AbsoluteURL">
	<meta property="og:title"	 content="$Title.ATT">
	<meta property="og:description"  content="$Excerpt.ATT">

	<!-- Favicon -->
	<link rel="shortcut icon" href="annual-report-project/images/favicon.ico" />
</head>

<body class="$ClassName">

	<% include DivisionBar %>

	<a href="#main" class="visuallyhidden focusable">Skip to main content</a>

	$Layout
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="{$ThemeDir}/build/build.js"></script>
	<% include GoogleAnalytics %>
</body>
</html>