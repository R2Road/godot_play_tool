class_name helper_move2center_with_camera2d extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Center Pivot : with Camera2D"


static func scene_path()->String:
	return get_stack()[0]["source"].replace( ".gd", ".tscn" )



############################ Override ############################
func _ready():
	pam.set_name( helper_move2center_with_camera2d.scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_message( " > 빨간 원은 ( 0, 0 ) 에 위치한다." )
	pam.add_message( " > 초록 점은 카메라의 위치다." )
	build_summary( eSceneType.TEST )
