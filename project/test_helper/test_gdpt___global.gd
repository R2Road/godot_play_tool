class_name test_gdpt___global extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "GDPT : Global"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_lf()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_subject( "GDPT에 미리 읽기 해놓은 helper의 packed_scene들 : Link 점검" )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.TEST )
	
	#
	# Start Test
	#
	var root = Node2D.new()
	root.position = Vector2( 100, 100 )
	add_child( root )
	
	#
	root.add_child( GDPT.helper_0_0_packed_scene.instantiate() )
	root.add_child( GDPT.helper_circle_packed_scene.instantiate() )
	root.add_child( GDPT.helper_drag_packed_scene.instantiate() )
	root.add_child( GDPT.helper_line_packed_scene.instantiate() )
	root.add_child( GDPT.helper_move2center_packed_scene.instantiate() )
	root.add_child( GDPT.helper_point_packed_scene.instantiate() )
	root.add_child( GDPT.helper_rect_packed_scene.instantiate() )
	root.add_child( GDPT.helper_reticle_packed_scene.instantiate() )
	
	#
	root.add_child( GDPT.helper_hslider_packed_scene.instantiate() )
	
	#
	root.add_child( GDPT.helper_code_packed_scene.instantiate() )
	root.add_child( GDPT.helper_output_packed_scene.instantiate() )
