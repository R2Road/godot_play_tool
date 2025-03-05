class_name test_helper___volume extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_volume"


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
	$CanvasLayer/HelperVolume.set_volume( 30 )
