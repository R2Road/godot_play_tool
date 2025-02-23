class_name test_helper___code extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "Helper : Code"


static func scene_path()->String:
	return super.scene_path()



#### Export ######################################################
@export var helper_code : GDPTHelper_Code



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_split()
	build_summary( eSceneType.TEST )
	
	helper_code.show_code( scene_path().replace( ".tscn", ".gd" ), 6, 7 )
