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
	pam.add_action( "add", Key.KEY_1, do_add )
	pam.add_action( "clear", Key.KEY_2, do_clear )
	build_summary( eSceneType.TEST )
	
	#
	#
	#
	$helper_output.add_normal( "abc" )
	$helper_output.add_normal( "def" )
	$helper_output.add_normal( "ghi" )



### Interface ####################################################
func do_add()->void:
	$helper_output.add_normal( "do" )


func do_clear()->void:
	$helper_output.clear()
