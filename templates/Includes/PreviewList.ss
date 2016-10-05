<nav class="preview-list clearfix" role="navigation">
	<ul id="isotope-menu">
		<% with Issue %>
		<% loop $Children %>
			<li class="item <% loop $Categories %>$Title <% end_loop %> $LinkingMode" data-id="{$ID}">
				<% include ArticlePreviewLink %>
			</li>
		<% end_loop %>
		<% end_with %>
	</ul>
</nav>

