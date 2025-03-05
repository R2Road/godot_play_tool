class_name test_helper___circle extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_circle"

static func scene_path()->String:
	return super.scene_path()



### Export #######################################################
@export var helper_circle : GDPTHelper_Circle

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
	offset_x_slider.value = helper_circle.offset.x
	offset_y_slider.value = helper_circle.offset.y
	
	radius_slider.value = helper_circle.radius
	
	fill_checkbox.button_pressed = helper_circle.fill
	
	color_picker.color = helper_circle.color
	
	#
	offset_x_slider.value_changed.connect( func( value )->void: helper_circle.offset.x = value )
	offset_y_slider.value_changed.connect( func( value )->void: helper_circle.offset.y = value )
	
	radius_slider.value_changed.connect( func( value )->void: helper_circle.radius = value )
	
	fill_checkbox.toggled.connect( func( value )->void: helper_circle.fill = value )
	
	color_picker.color_changed.connect( func( value )->void: helper_circle.color = value )
	
