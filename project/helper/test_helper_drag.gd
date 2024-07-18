class_name test_helper_drag extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Drag"



############################ Override ############################
func _ready():
	pam.set_name( test_helper_drag.scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_message( " > 빨간 원은 ( 0, 0 ) 에 위치한다." )
	pam.add_message( " > Mouse로 Drag" )
	pam.add_lf()
	pam.add_action( "Camera U", Key.KEY_W, func(): $helper_reticle.position.y -= 10 )
	pam.add_action( "Camera D", Key.KEY_S, func(): $helper_reticle.position.y += 10 )
	pam.add_action( "Camera L", Key.KEY_A, func(): $helper_reticle.position.x -= 10 )
	pam.add_action( "Camera R", Key.KEY_D, func(): $helper_reticle.position.x += 10 )
	build_summary( eSceneType.TEST )
