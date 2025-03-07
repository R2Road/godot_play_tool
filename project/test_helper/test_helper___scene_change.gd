class_name test_helper___scene_change extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_scene_change"

static func scene_path()->String:
	return super.scene_path()



### Export #######################################################
@export var scene_change : GDPTHelper_SceneChange



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_action( "Do", KEY_SPACE, do )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.TEST )



### Interface ####################################################
func do()->void:
	scene_change.start( test_helper___scene_change___exit_point.scene_path() )
