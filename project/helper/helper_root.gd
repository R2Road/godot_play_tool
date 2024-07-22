class_name helper_root extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Helper Root"



############################ Override ############################
func _ready():
	pam.set_name( helper_root.scene_name() )
	pam.add_split()
	pam.add_mover( dev_root.scene_name(),			Key.KEY_ESCAPE, "res://dev_root.tscn" )
	pam.add_lf()
	pam.add_mover( helper_move2center_with_viewport.scene_name(),	Key.KEY_1, "res://helper/helper_move2center_with_viewport.tscn" )
	pam.add_mover( helper_move2center_with_camera2d.scene_name(),	Key.KEY_2, "res://helper/helper_move2center_with_camera2d.tscn" )
	pam.add_lf()
	pam.add_mover( test_helper_drag.scene_name(),			Key.KEY_Q, "res://helper/test_helper_drag.tscn" )
	pam.add_mover( test_helper_debug_print.scene_name(),	Key.KEY_W, "res://helper/test_helper_debug_print.tscn" )
	build_summary( eSceneType.TEST )
