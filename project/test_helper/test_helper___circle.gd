class_name test_helper___circle extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_circle"

static func scene_path()->String:
	return super.scene_path()



### Export #######################################################
@export var test_helper : GDPTHelper_Circle

@export var offset_x_slider : HSlider
@export var offset_y_slider : HSlider
@export var radius_slider : HSlider
@export var fill_checkbox : CheckBox
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
	offset_x_slider.value = test_helper.offset.x
	offset_y_slider.value = test_helper.offset.y
	
	radius_slider.value = test_helper.radius
	
	fill_checkbox.button_pressed = test_helper.fill
	
	color_picker.color = test_helper.color
	
	#
	offset_x_slider.value_changed.connect( func( value )->void: test_helper.offset.x = value )
	offset_y_slider.value_changed.connect( func( value )->void: test_helper.offset.y = value )
	
	radius_slider.value_changed.connect( func( value )->void: test_helper.radius = value )
	
	fill_checkbox.toggled.connect( func( value )->void: test_helper.fill = value )
	
	color_picker.color_changed.connect( func( value )->void: test_helper.color = value )
	
