class_name test_helper___scene_change___exit_point extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_scene_change : exit point"

static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_mover( test_helper_root.scene_name(), KEY_ESCAPE, test_helper_root.scene_path() )
	pam.add_split()
	build_summary( eSceneType.TEST )
