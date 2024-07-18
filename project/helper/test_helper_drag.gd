class_name test_helper_drag extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Drag"



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_message( " > 빨간 원은 ( 0, 0 ) 에 위치한다." )
	pam.add_message( " > Mouse로 Drag" )
	build_summary( eSceneType.TEST )
