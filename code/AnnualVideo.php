<?php
class AnnualVideo extends DataObject {

	private static $db = array(
		"Title" => "Varchar"
	);

	private static $has_one = array(
		"Issue" => "Issue",
		"mp4VideoFile" => "File",
		"webmVideoFile" => "File",
		"ogvVideoFile" => "File"
			
	);
	
	private static $singular_name = 'Cover Video';
	private static $plurla_name = 'Cover Videos';
	

	
}
