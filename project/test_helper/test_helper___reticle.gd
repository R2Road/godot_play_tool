class_name test_helper___reticle extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_reticle"

static func scene_path()->String:
	return super.scene_path()



### Export #######################################################
@export var test_helper : GDPTHelper_Reticle

@export var length_slider : HSlider
@export var line_width_slider : HSlider
@export var color_h_picker : ColorPicker
@export var color_v_picker : ColorPicker



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
	length_slider.value = test_helper.length
	
	line_width_slider.value = test_helper.line_width
	
	color_h_picker.color = test_helper.color_h
	
	color_v_picker.color = test_helper.color_v
	
	#
	length_slider.value_changed.connect( func( value )->void: test_helper.length = value )
	
	line_width_slider.value_changed.connect( func( value )->void: test_helper.line_width = value )
	
	color_h_picker.color_changed.connect( func( value )->void: test_helper.color_h = value )
	color_v_picker.color_changed.connect( func( value )->void: test_helper.color_v = value )
