class_name test_helper___output extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "Helper : Output"


static func scene_path()->String:
	return super.scene_path()



#### Export ######################################################
@export var helper_output : GDPTHelper_Output



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
	helper_output.print( "abc" )
	helper_output.print( "def" )
	helper_output.print( "ghi" )
	helper_output.print_color( "ghi", Color.RED )
	helper_output.print_color( "def", Color.AQUAMARINE )
	helper_output.print_color( "ghi", Color.BLUE )



### Interface ####################################################
func do_add()->void:
	helper_output.lf()
	helper_output.print( "do" )
	helper_output.print_color( "do", Color.RED )


func do_clear()->void:
	helper_output.clear()
