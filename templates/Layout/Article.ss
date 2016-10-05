<div id="content-wrapper" class="clearfix">
	<article id="main" class="article" role="main" >
	<div id="article-body" data-id="{$ID}">
	<header class="article-header">
		<% if $Department %><em class="article-dept">$Department</em><% end_if %>
		<h1 class="article-title">$Title</h1>
		<div class="article-meta">
	        <% if $WordsBy %><p>Written by<em id="page-article-author">$WordsBy</em></p><% end_if %>
	        <% if $VideoBy %><p>Photo by <em>$VideoBy</em></p><% end_if %>
	    </div>
	</header>

	<% if $Photo %>
		<div class="article-img">
			<img src="$Photo.URL" alt="$Title">
		</div>
	<% end_if %>

	<div class="article-body clearfix">
		<div class="article-content">
			$Content
		</div>
		<ul class="socialcount" data-url="$AbsoluteLink" data-share-text="$Title - $AbsoluteLink">
			<li class="facebook">
				<a href="https://www.facebook.com/sharer/sharer.php?u=$AbsoluteLink" title="Share on Facebook"><span class="social-icon icon-facebook"></span><span class="count">Like</span>
				</a>
			</li>
			<li class="twitter">
				<a href="https://twitter.com/intent/tweet?text=$AbsoluteLink" title="Share on Twitter"><span class="social-icon icon-twitter"></span><span class="count">Tweet</span></a>
			</li>
			<li class="googleplus">
				<a href="https://plus.google.com/share?url=$AbsoluteLink" title="Share on Google Plus"><span class="social-icon icon-googleplus"></span><span class="count">+1</span></a>
			</li>
		</ul>
		<% if $Categories %>
			<div class="article-cat-container">
				Filed under: 
				<% loop $Categories %>
					$Title<% if not $Last %>, <% end_if %>
				<% end_loop %>
			</div>
		<% end_if %>
		<% if $NextArticle %>
			<hr />
			<div class="article-nav-container">
				<h2>Next:</h2>

				<div id="article-nav">
					<% with $NextArticle %>
						<% include ArticlePreviewLink %>
					<% end_with %>
				</div>
			</div>
		<% end_if %>
	</div>
	</div>
	</article>
  <section id="menu" data-spy="affix" data-offset-top="43" class="affix-top">
    <% include FilterMenu %>
    <% include PreviewList %>                                         
  </section>
</div>	


