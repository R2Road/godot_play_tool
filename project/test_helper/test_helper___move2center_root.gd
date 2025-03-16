class_name test_helper___move2center_root extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_move2center : Root"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_front( test_helper_root.scene_name(),			Key.KEY_ESCAPE, test_helper_root.scene_path() )
	pam.add_lf()
	pam.add_mover( test_helper___move2center_with_mainscene.scene_name(),	Key.KEY_1, test_helper___move2center_with_mainscene.scene_path() )
	pam.add_mover( test_helper___move2center_with_viewport.scene_name(),	Key.KEY_2, test_helper___move2center_with_viewport.scene_path() )
	pam.add_mover( test_helper___move2center_with_camera2d.scene_name(),	Key.KEY_3, test_helper___move2center_with_camera2d.scene_path() )
	pam.add_mover( test_helper___move2center_with_canvaslayer.scene_name(),	Key.KEY_4, test_helper___move2center_with_canvaslayer.scene_path() )
	pam.add_mover( test_helper___move2center_with_control.scene_name(),		Key.KEY_5, test_helper___move2center_with_control.scene_path() )
	pam.add_lf()
	build_summary( eSceneType.ROOT )
