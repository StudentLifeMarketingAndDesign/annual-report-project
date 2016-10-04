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
  

    <!-- JS -->
    <!--[if lt IE 9]>
        <script src="{$ThemeDir}/js/plugins/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript" src="//use.typekit.net/ocu2ncd.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>
    <script src="{$ThemeDir}/js/plugins/modernizr-2.5.3.min.js"></script>

    <!-- Open Graph -->
    <meta property="og:type"     content="article"> 
    <meta property="og:url"      content="$AbsoluteLink">
    <meta property="og:site_name"    content="Division of Student Life Annual Report">
    <meta property="og:image"    content="$Photo.AbsoluteURL">
    <meta property="og:title"    content="$Title">
    <meta property="og:description"  content="$Excerpt">

    <!-- Favicon -->
    <link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
</head>

<body class="$ClassName">

    <% include DivisionBar %>

    <div id="content-wrapper" class="clearfix">

        <article id="main" class="article" role="main">
            <img src="{$ThemeDir}/images/dosl-lg.png" class="dosl-img" alt="Division of Student Life">
            <div id='background-video' class='visible-md visible-lg'>
            <video autoplay loop preload class="fill">
                <source class="mp4" src="{$ThemeDir}/video/{$RandomVideo}.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' />
                <source class="webm" src="{$ThemeDir}/video/{$RandomVideo}.webm" type='video/webm; codecs="vp8, vorbis"' />
                <source class="ogv" src="{$ThemeDir}/video/{$RandomVideo}.ogv" type='video/ogg; codecs="theora, vorbis"' />
            </video>
          </div>
        </article>

      <section id="menu" data-spy="affix" data-offset-top="43" class="affix-top">
        <% include FilterMenu %>
        <% include PreviewList %>                                         
      </section>
        
    </div>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="{$ThemeDir}/build/build.js"></script>
    <% include GoogleAnalytics %>

</body>
</html>

