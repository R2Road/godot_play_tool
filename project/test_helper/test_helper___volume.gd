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
	pam.add_lf2()
	pam.add_action( "Do SFX", KEY_SPACE, func()->void: $AudioStreamPlayer2D_SFX.play() )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.TEST )
	
	#
	#
	#
	$CanvasLayer/VBoxContainer/HelperVolume_Master.set_volume( 30 )
	$CanvasLayer/VBoxContainer/HelperVolume_BGM.set_volume( 30 )
	$CanvasLayer/VBoxContainer/HelperVolume_SFX.set_volume( 30 )
