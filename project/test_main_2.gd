class_name test_main_2 extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Test Main 2"



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_lf()
	pam.add_front( dev_root.scene_name(),		Key.KEY_ESCAPE, 	dev_root.scene_path() )
	pam.add_lf()
	pam.add_lf()
	pam.add_mover( test_action_1.scene_name(),	Key.KEY_Q, 			test_action_1.scene_path() )
	pam.add_split()
	build_summary( eSceneType.ROOT )
