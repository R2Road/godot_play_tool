class_name test_action_root extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Action Root"


static func scene_path()->String:
	return super.scene_path()



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_lf()
	pam.add_front( dev_root.scene_name(),			Key.KEY_ESCAPE, dev_root.scene_path() )
	pam.add_lf()
	pam.add_root( "Test Main 2",	Key.KEY_1, 		"res://test_action/test_main_2.tscn" )
	pam.add_mover( "Test Action 1",	Key.KEY_2, 		"res://test_action/test_action_1.tscn" )
	pam.add_mover( test_action_mover___node2d_2_gdpt_scene.scene_name(),	Key.KEY_3, test_action_mover___node2d_2_gdpt_scene.scene_path() )
	pam.add_lf()
	pam.add_mover( test_action___summary_color.scene_name(),	Key.KEY_Q, test_action___summary_color.scene_path() )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.ROOT )
