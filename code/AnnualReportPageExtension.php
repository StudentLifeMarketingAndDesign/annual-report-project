<?php
class AnnualReportPageExtension extends DataExtension {

	private static $db = array(
	);

	private static $has_one = array(
	);

	public function Issues(){
		return Issue::get();
	}

}