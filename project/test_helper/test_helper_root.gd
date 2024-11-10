class_name test_helper_root extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Helper Root"


static func scene_path()->String:
	return super.scene_path()



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_front( dev_root.scene_name(),			Key.KEY_ESCAPE, dev_root.scene_path() )
	pam.add_lf()
	pam.add_mover( test_helper___move2center_with_viewport.scene_name(),	Key.KEY_1, test_helper___move2center_with_viewport.scene_path() )
	pam.add_mover( test_helper___move2center_with_camera2d.scene_name(),	Key.KEY_2, test_helper___move2center_with_camera2d.scene_path() )
	pam.add_lf()
	pam.add_mover( test_helper___drag.scene_name(),			Key.KEY_Q, test_helper___drag.scene_path() )
	pam.add_mover( test_helper_debug_print.scene_name(),	Key.KEY_W, test_helper_debug_print.scene_path() )
	pam.add_lf()
	pam.add_mover( test_helper___code.scene_name(),			Key.KEY_A, test_helper___code.scene_path() )
	pam.add_lf()
	pam.add_mover( test_helper_with_global.scene_name(),	Key.KEY_SPACE, test_helper_with_global.scene_path() )
	build_summary( eSceneType.TEST )
