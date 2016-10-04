<?php
class Article extends Page {

	public static $db = array(
		"Department" => "Text",
		//"Challenge" => "Enum('About, Excel, Stretch, Engage, Choose, Serve', 'Excel')",
		"WordsBy" => "Text",
		"Excerpt" => "Text",
	
	);

	public static $has_one = array(
		"Photo" => "Image"

	);
	
	public static $many_many = array(
		"Categories" => "Category"

	);
	
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		
		$fields->removeByName("Content");
		$fields->removeByName("Metadata");

		$fields->addFieldToTab("Root.Main", new TextField("Department", "Department"));
		//$fields->addFieldToTab("Root.Main", new DropdownField('Challenge','Challenge',singleton('Article')->dbObject('Challenge')->enumValues()));
		$fields->addFieldToTab("Root.Main", new TextField("Department", "Department"));
		$fields->addFieldToTab("Root.Main", new TextField("WordsBy", "Written By:"));
		$fields->addFieldToTab("Root.Main", new TextareaField("Excerpt", "Excerpt"));
		$fields->addFieldToTab("Root.Main", new UploadField("Photo", "Photo"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Content"));
		
		$categoriesMap = array();
		//foreach(Category::get() as $category) {
		foreach($this->getParent()->Categories() as $category){
			$categoriesMap[$category->ID] = $category->Title;
		}
		asort($categoriesMap);
		
		$categoriesField = ListboxField::create('Categories', 'Categories <a href="admin/categories/" target="_blank">Add/Edit</a>')
			->setMultiple(true)
			->setSource($categoriesMap)
			->setAttribute(
				'data-placeholder', 
				'Add Categories'
			);
		$fields->addFieldToTab( 'Root.Main', $categoriesField, "Content" );
		
		return $fields;
		
	}
	
	//public static $allowed_children = array("");

}
class Article_Controller extends Page_Controller {

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
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}

	public function Issue(){
		return $this->getParent();
	}

}