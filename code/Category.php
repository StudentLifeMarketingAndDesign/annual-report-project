<?php
class Category extends DataObject {
	private static $db = array(
		"Title" => "Text",
		"AltTitle" => "Text",
		"URLSlug" => "Text",
		"Showmenu" => "Boolean"
	);
	
	private static $has_one = array(

	);
	private static $belongs_many_many = array(
		"Article" => "Article",
		"Issue" => "Issue"
	);
	
	function getCMSFields() {
		$fields = new FieldList();
		$fields->push( new TextField( 'Title' ) );
		return $fields;
	}
		
	function Link(){
		$base_url = Director::absoluteBaseURL();
		return $base_url."events/categories/".$this->Title; 
	}
	
	
}
