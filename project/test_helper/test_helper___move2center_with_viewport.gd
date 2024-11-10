class_name test_helper___move2center_with_viewport extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Move 2 Center : with Viewport"


static func scene_path()->String:
	return super.scene_path()



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_message( " > 빨간 원은 ( 0, 0 ) 에 위치한다." )
	build_summary( eSceneType.TEST )
