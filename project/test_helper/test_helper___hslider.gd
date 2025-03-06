class_name test_helper___hslider extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_hslider"

static func scene_path()->String:
	return super.scene_path()



### Export #######################################################
@export var test_helper : GDPTHelper_HSlider
@export var label : Label



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_split()
	build_summary( eSceneType.TEST )
	
	#
	#
	#
	test_helper.set_name_label( "test helper" )
	
	#
	label.text = str( test_helper.value )
	
	#
	test_helper.value_changed.connect( func( value )->void: label.text = str( value ) )
