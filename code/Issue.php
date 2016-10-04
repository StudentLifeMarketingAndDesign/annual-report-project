<?php
class Issue extends Page {

	private static $db = array(
	);
	private static $has_one = array();
	private static $many_many = array(
		"AnnualVideos" => "AnnualVideo",
		"Categories" => "Category"
	);
    private static $many_many_extraFields=array();
    private static $allowed_children = array("Article");
    private static $can_be_root = false;
	private static $defaults = array ();
	
	public function getCMSFields(){
		$f = parent::getCMSFields();
		$videoField = new GridField('AnnualVideos', 'Annual Videos', $this->AnnualVideos(), GridFieldConfig_RelationEditor::create());
		$categoryField = new GridField('Categories', 'Categories', $this->Categories(), GridFieldConfig_RelationEditor::create());
		$f->removeFieldFromTab("Root.Main","Content");
        $f->addFieldtoTab("Root.Main", $videoField);
        $f->addFieldtoTab("Root.Main", $categoryField);
        
        // Create a tab named "Students" and add our field to it
        //$f->addFieldToTab('Root.Main', $videosField); 
		return $f;
	}

	
}
class Issue_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates
		// instead of putting Requirements calls here.  However these are
		// included so that our older themes still work
	}
	
	private static $allowed_actions = array ( 
		'RandomVideo'
	);

	public function Issue(){
		return $this;
	}
	
	public function RandomVideo(){
		$randomVideo = AnnualVideo::get()
			->filter(array(
				"IssueID" => $this->ID
				))->sort("RAND()")->First();
		
		if ($randomVideo) {
			return $randomVideo;
		}else{
			return false;
		}

	}
	public function DefaultRandomVideo(){
		$videos[0] = "imu_hd";
        $videos[1] = "burge_hd";
        $videos[2] = "pentacrest_hd";
        $videos[3] = "rec_hd";
        $randomKey = array_rand($videos);
        $randomVideo = $videos[$randomKey];
        
        return $randomVideo;
	}

}