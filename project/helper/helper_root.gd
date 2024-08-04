class_name helper_root extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Helper Root"


static func scene_path()->String:
	return get_stack()[0]["source"].replace( ".gd", ".tscn" )



############################ Override ############################
func _ready():
	pam.set_name( helper_root.scene_name() )
	pam.add_split()
	pam.add_mover( dev_root.scene_name(),			Key.KEY_ESCAPE, dev_root.scene_path() )
	pam.add_lf()
	pam.add_mover( helper_move2center_with_viewport.scene_name(),	Key.KEY_1, helper_move2center_with_viewport.scene_path() )
	pam.add_mover( helper_move2center_with_camera2d.scene_name(),	Key.KEY_2, helper_move2center_with_camera2d.scene_path() )
	pam.add_lf()
	pam.add_mover( test_helper_drag.scene_name(),			Key.KEY_Q, test_helper_drag.scene_path() )
	pam.add_mover( test_helper_debug_print.scene_name(),	Key.KEY_W, test_helper_debug_print.scene_path() )
	build_summary( eSceneType.TEST )
