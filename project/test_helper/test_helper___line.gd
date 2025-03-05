class_name test_helper___line extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_line"

static func scene_path()->String:
	return super.scene_path()



### Export #######################################################
@export var test_helper : GDPTHelper_Line
@export var start_indicator : GDPTHelper_Point

@export var start_x_slider : HSlider
@export var start_y_slider : HSlider

@export var end_x_slider : HSlider
@export var end_y_slider : HSlider

@export var line_width_slider : HSlider

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
	end_x_slider.value = test_helper.point_end.x
	end_y_slider.value = test_helper.point_end.y
	
	start_x_slider.value = test_helper.point_start.x
	start_y_slider.value = test_helper.point_start.y
	
	line_width_slider.value = test_helper.line_width
	
	color_picker.color = test_helper.color
	
	#
	end_x_slider.value_changed.connect( func( value )->void: test_helper.point_end.x = value )
	end_y_slider.value_changed.connect( func( value )->void: test_helper.point_end.y = value )
	
	start_x_slider.value_changed.connect(
		func( value )->void:
			test_helper.point_start.x = value
			start_indicator.position.x = value
	)
	start_y_slider.value_changed.connect(
		func( value )->void:
			test_helper.point_start.y = value
			start_indicator.position.y = value
	)
	
	line_width_slider.value_changed.connect( func( value )->void: test_helper.line_width = value )
	
	color_picker.color_changed.connect( func( value )->void: test_helper.color = value )
	
