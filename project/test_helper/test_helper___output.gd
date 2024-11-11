class_name test_helper___output extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "Helper : Output"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_split()
	pam.add_lf()
	pam.add_action( "do", Key.KEY_1, do )
	pam.add_action( "clamp", Key.KEY_2, clamp )
	build_summary( eSceneType.TEST )
	
	#
	#
	#
	$helper_output.add_normal( "abc" )
	$helper_output.add_normal( "def" )
	$helper_output.add_normal( "ghi" )



### Interface ####################################################
func do()->void:
	$helper_output.add_normal( "do" )


func clamp_output()->void:
	$helper_output.clamp_output()
