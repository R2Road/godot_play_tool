class_name test_helper___rect extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_rect"

static func scene_path()->String:
	return super.scene_path()



### Export #######################################################
@export var test_helper : GDPTHelper_Rect

@export var start_x_slider : HSlider
@export var start_y_slider : HSlider
@export var size_w_slider : HSlider
@export var size_h_slider : HSlider
@export var line_width_slider : HSlider
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
	start_x_slider.value = test_helper.rect.position.x
	start_y_slider.value = test_helper.rect.position.y
	
	size_w_slider.value = test_helper.rect.size.x
	size_h_slider.value = test_helper.rect.size.y
	
	line_width_slider.value = test_helper.out_line_bold
	
	fill_checkbox.button_pressed = test_helper.fill
	
	color_picker.color = test_helper.color
	
	#
	start_x_slider.value_changed.connect( func( value )->void: test_helper.rect.position.x = value )
	start_y_slider.value_changed.connect( func( value )->void: test_helper.rect.position.y = value )
	
	size_w_slider.value_changed.connect( func( value )->void: test_helper.rect.size.x = value )
	size_h_slider.value_changed.connect( func( value )->void: test_helper.rect.size.y = value )
	
	line_width_slider.value_changed.connect( func( value )->void: test_helper.out_line_bold = value )
	
	fill_checkbox.toggled.connect( func( value )->void: test_helper.fill = value )
	
	color_picker.color_changed.connect( func( value )->void: test_helper.color = value )
	
