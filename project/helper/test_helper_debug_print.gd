class_name test_helper_debug_print extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Debug Print"


static func scene_path()->String:
	return get_stack()[0]["source"].replace( ".gd", ".tscn" )



############################ Override ############################
func _ready():
	pam.set_name( test_helper_debug_print.scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_action( "GDPT Debug Flag ON", 	Key.KEY_1, 		func(): GDPT.on_debug = true )
	pam.add_action( "GDPT Debug Flag OFF", 	Key.KEY_2, 		func(): GDPT.on_debug = false )
	pam.add_action( "Debug Print", 			Key.KEY_SPACE, 	func(): GDPT._debug_print( func()->String: return "Test Message" ) )
	build_summary( eSceneType.TEST )
