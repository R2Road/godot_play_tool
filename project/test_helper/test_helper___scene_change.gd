class_name test_helper___scene_change extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_scene_change"

static func scene_path()->String:
	return super.scene_path()



### Export #######################################################
@export var scene_change : GDPTHelper_SceneChange
@export var scene_change_packed_scene : PackedScene



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_action( "Do : Child Place", KEY_1, do_child_place )
	pam.add_action( "Do : Global Place", KEY_2, do_global_place )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.TEST )



### Interface ####################################################
func do_child_place()->void:
	scene_change.start( test_helper___scene_change___exit_point.scene_path() )


func do_global_place()->void:
	var scene : GDPTHelper_SceneChange = scene_change_packed_scene.instantiate()
	get_tree().root.add_child( scene )
	
	scene.start( test_helper___scene_change___exit_point.scene_path(), 0.1, 2 )
