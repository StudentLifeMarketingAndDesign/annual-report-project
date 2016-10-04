<?php

class CategoryAdmin extends ModelAdmin {


  private static $managed_models = array('Category'); 
  private static $url_segment = 'categories';
  private static $menu_title = 'Categories';
  private static $menu_icon = 'themes/annual-report/images/ionic.gif';
  public $showImportForm = false; 
  


}
