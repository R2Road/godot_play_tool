class_name test_gdpt_root extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "GDPT"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_front( dev_root.scene_name(),			Key.KEY_ESCAPE, dev_root.scene_path() )
	pam.add_lf()
	pam.add_mover( test_gdpt___debug_print.scene_name(),	Key.KEY_1, test_gdpt___debug_print.scene_path() )
	pam.add_mover( test_gdpt___global.scene_name(),			Key.KEY_2, test_gdpt___global.scene_path() )
	build_summary( eSceneType.TEST )
