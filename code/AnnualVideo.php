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
	
	

	
}
