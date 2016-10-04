<div class="menu">
    <a href="{$BaseHref}" class="oldcap-logo">
        <img src="{$ThemeDir}/images/capitol.png" alt="University of Iowa Capitol">
    </a>
        <strong class="year">
            <form action="{$Link}" method="post" enctype="multipart/form-data">
                <label for="goto" class="visuallyhidden">View this issue:</label>
                  <select id="goto">
                    <% loop Menu(2) %>
                        <option value="$Link" <% if $LinkOrSection == "section" %>selected="selected"<% end_if %>>$Title</option>
                    <% end_loop %>
                  </select>
                  <input type="submit" value="submit" class="visuallyhidden"></input>
                </form>
        </strong>
    <a href="{$BaseHref}"><h1 class="heading-main">Annual<span class="break"></span> Report</h1>
        <h2 class="heading-sec">Division of Student Life</h2>
    </a>
    <ul id="filters" class="main-nav clearfix">
    	<li><a href="#all" data-filter="*" class="active">All</a></li>
        <% with Issue %>
        	<% loop Categories %>
        		<li><a href="#$Title" data-filter=".$Title" class="">$Title</a></li>
        	<% end_loop %>
        <% end_with %>
    </ul>
</div>