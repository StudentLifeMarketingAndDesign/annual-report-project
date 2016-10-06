<?php
class AnnualReportPageExtension extends DataExtension {

	private static $db = array(
	);

	private static $has_one = array(
	);

	public function Issues(){
		$holder = IssueHolder::get()->First();
		$issues = $holder->Children();
		return $issues->reverse();
	}

}