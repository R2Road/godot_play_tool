class_name test_helper___point extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_point"

static func scene_path()->String:
	return super.scene_path()



### Export #######################################################
@export var test_helper : GDPTHelper_Point

@export var color_picker : ColorPicker



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
	color_picker.color = test_helper.color
	
	#
	color_picker.color_changed.connect( func( value )->void: test_helper.color = value )
	
