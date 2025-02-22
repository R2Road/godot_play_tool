class_name test_gdpt___input extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "GDPT : Input"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_message( "[1] Move L : KEY RELEASE" )
	pam.add_message( "[2] Move R : KEY PUSH, PRESSED" )
	build_summary( eSceneType.TEST )
	
	#
	#
	#
	var helper_input : GDPTHelper_Input = $helper_circle/helper_input
	helper_input.add( Key.KEY_1, GDPTHelper_Input.eState.RELEASE, do_1 )
	helper_input.add( Key.KEY_2, GDPTHelper_Input.eState.PUSH, do_2 )
	helper_input.add( Key.KEY_2, GDPTHelper_Input.eState.PRESSED, do_2 )
	
	# for Same Key Check
	helper_input.add( Key.KEY_2, GDPTHelper_Input.eState.PRESSED, do_2 )



### Interface ####################################################
func do_1()->void:
	$helper_circle.position.x -= 5
func do_2()->void:
	$helper_circle.position.x += 5
