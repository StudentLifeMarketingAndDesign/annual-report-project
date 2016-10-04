<?php

class Challenge extends DataObject {

	public static $db = array(
		"Title" => "Text"
	);

	public static $has_many = array (
		"Articles" => "Article"
	);
	

}


?>