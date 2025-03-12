class_name test_gdpt___debug_print extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "Debug Print"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_action( "GDPT Debug Flag Toggle", 	Key.KEY_1,
		func(): 
			GDPT.on_debug = ( not GDPT.on_debug )
			update_label()
	)
	pam.add_action( "Debug Print", 			Key.KEY_SPACE, 	func(): GDPT._debug_print( func()->String: return "Test Message" ) )
	pam.add_lf()
	pam.add_note( "에디터의 output 창을 봐." )
	build_summary( eSceneType.TEST )
	
	#
	#
	#
	update_label()


func update_label()->void:
	if GDPT.on_debug:
		$CanvasLayer/Label.text = "ON"
	else:
		$CanvasLayer/Label.text = "OFF"
