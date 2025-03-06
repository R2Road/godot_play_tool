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
	GDPTHelper_Volume.apply_volume( 0, 20 )
	$CanvasLayer/VBoxContainer/HelperVolume_Master.set_volume_no_signal( 20 )
	
	GDPTHelper_Volume.apply_volume( 1, 100 )
	$CanvasLayer/VBoxContainer/HelperVolume_BGM.set_volume_no_signal( 100 )
	
	GDPTHelper_Volume.apply_volume( 1, 100 )
	$CanvasLayer/VBoxContainer/HelperVolume_SFX.set_volume_no_signal( 100 )
