class_name dev_root extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Dev Root" + " <" + GDPT.version + ">"


static func scene_path()->String:
	return super.scene_path()



############################ Override ############################
func _ready():
	pam.set_name( dev_root.scene_name() )
	pam.add_split()
	pam.add_exit()
	pam.add_lf()
	pam.add_mover( "Test Main 2",	Key.KEY_1, 		"res://test_main_2.tscn" )
	pam.add_lf()
	pam.add_mover( "Test Action 1",	Key.KEY_Q, 		"res://test_action_1.tscn" )
	pam.add_split()
	pam.add_mover( helper_root.scene_name(),	Key.KEY_SPACE,	helper_root.scene_path() )
	pam.add_split()
	build_summary( eSceneType.ROOT )
