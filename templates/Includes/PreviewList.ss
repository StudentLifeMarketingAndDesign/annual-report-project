<nav class="preview-list clearfix" role="navigation">
	<ul id="isotope-menu">
		<% with Issue %>
		<% loop $Children %>
		<li class="item <% loop $Categories %>$Title <% end_loop %> $LinkingMode">
			<a href="{$Link}#" class="preview-link $LinkingMode" title="Go to the $Title.XML article">
				<% if $Photo %><img src="$Photo.CroppedImage(150,150).URL" class="preview-thumb" alt="$Title"><% end_if %>
				<h3 class="preview-title">$MenuTitle.XML</h3>
				<% if $Department %><span class="preview-dept">$Department</span><% end_if %>
				<p class="preview-excerpt">$Excerpt</p>
			</a>
		</li>
		<% end_loop %>
		<% end_with %>
	</ul>
</nav>

