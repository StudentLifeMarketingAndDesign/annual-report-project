<div id="content-wrapper" class="clearfix">

    <article id="main" class="article" role="main">
        <img src="{$ThemeDir}/images/dosl-lg.png" class="dosl-img" alt="Division of Student Life" />
        <div id='background-video' class='visible-md visible-lg'>
        <% if $RandomVideo %>
	        <% with $RandomVideo %>
		        <video autoplay loop preload class="fill">
		            <source class="mp4" src="$mp4VideoFile.URL" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' />
		            <source class="webm" src="$webmVideoFile.URL" type='video/webm; codecs="vp8, vorbis"' />
		            <source class="ogv" src="$ogvVideoFile.URL" type='video/ogg; codecs="theora, vorbis"' />
		        </video>
	        <% end_with %>
        <% else %>
	        <video autoplay loop preload class="fill">
	            <source class="mp4" src="{$ThemeDir}/video/{$DefaultRandomVideo}.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' />
	            <source class="webm" src="{$ThemeDir}/video/{$DefaultRandomVideo}.webm" type='video/webm; codecs="vp8, vorbis"' />
	            <source class="ogv" src="{$ThemeDir}/video/{$DefaultRandomVideo}.ogv" type='video/ogg; codecs="theora, vorbis"' />
	        </video>
	   <% end_if %>
       </div>
    </article>

  <section id="menu" data-spy="affix" data-offset-top="43" class="affix-top">
    <% include FilterMenu %>
    <% include PreviewList %>                                         
  </section>
    
</div>
