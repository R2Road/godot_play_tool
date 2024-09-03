class_name test_action___root extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Action : Root"


static func scene_path()->String:
	return super.scene_path()



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_lf()
	pam.add_front( dev_root.scene_name(),			Key.KEY_ESCAPE, dev_root.scene_path() )
	pam.add_lf()
	pam.add_mover( test_action___key_color.scene_name(),	Key.KEY_1, test_action___key_color.scene_path() )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.ROOT )
