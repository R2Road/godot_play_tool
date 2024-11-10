class_name test_gdpt___debug_print extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "GDPT : Debug Print"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_action( "GDPT Debug Flag ON", 	Key.KEY_1, 		func(): GDPT.on_debug = true )
	pam.add_action( "GDPT Debug Flag OFF", 	Key.KEY_2, 		func(): GDPT.on_debug = false )
	pam.add_action( "Debug Print", 			Key.KEY_SPACE, 	func(): GDPT._debug_print( func()->String: return "Test Message" ) )
	build_summary( eSceneType.TEST )
