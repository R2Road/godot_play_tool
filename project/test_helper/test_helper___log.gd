class_name test_helper___log extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "Helper : Log"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_split()
	build_summary( eSceneType.TEST )
	
	#
	#
	#
	$helper_log.add_normal( "abc" )
	$helper_log.add_normal( "def" )
	$helper_log.add_normal( "ghi" )
