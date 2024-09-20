class_name test_helper___code extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Helper : Code"


static func scene_path()->String:
	return super.scene_path()



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_split()
	build_summary( eSceneType.TEST )
	
	$helper_code_1.show_code( scene_path().replace( ".tscn", ".gd" ), 6, 7 )
