<div class="menu">
    <a href="{$BaseHref}" class="oldcap-logo">
        <img src="annual-report-project/images/capitol.png" alt="University of Iowa Capitol">
    </a>
        <strong class="year">
            $Issue.Title
        </strong>
    <a href="{$BaseHref}"><h1 class="heading-main">Annual<span class="break"></span> Report</h1>
        <h2 class="heading-sec">
        <% if $SiteConfig.DepartmentName %>
        $SiteConfig.DepartmentName
        <% else %>
        Division of Student Life
        <% end_if %>
        </h2>
    </a>
    <ul id="filters" class="main-nav clearfix">
    	<li><a href="#all" data-filter="*" class="active">All</a></li>
        <% with Issue %>
        	<% loop Categories %>
        		<li><a href="#$Title" data-filter=".$Title" class="">$Title</a></li>
        	<% end_loop %>
        <% end_with %>
      </ul>
        <% if $Issues.Count > 1 %>
        <ul id="archive-filter" class="main-nav clearfix">
        <li><button class="archive-toggle" role="button" data-toggle="collapse" href="#collapseArchive" aria-expanded="false" aria-controls="collapseArchive">Archive<i class="fa fa-sm fa-caret-down fa-fw" aria-hidden="true"></i></button>
            <div class="collapse" id="collapseArchive">
                <ul>
                    <% loop $Issues %>
                    <li><a href="$AbsoluteLink" class="no-ajaxy">$Title</a></li>
                    <% end_loop %>
                </ul>
            </div>
        </li>
        </ul>
        <% end_if %>
  

</div>