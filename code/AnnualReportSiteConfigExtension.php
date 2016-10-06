<?php

class AnnualReportSiteConfigExtension extends DataExtension {
	private static $db = array(
		'DepartmentName' => 'Text'
	);
	private static $has_one = array(
		'LogoImage' => 'Image'
	);

    public function updateCMSFields(FieldList $fields) {
    	$fields->addFieldToTab("Root.Main", new TextField("DepartmentName", "Department Name (shows up above the main menu)"));
		$fields->addFieldToTab("Root.Main", new UploadField("LogoImage", "Logo Image to display on cover (400 pixels wide preferred)"));
    }
}