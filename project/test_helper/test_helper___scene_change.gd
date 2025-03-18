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
	pam.add_action( "Do : Global Place : delete when finished", KEY_3, do_global_place__delete_when_finished )
	pam.add_lf()
	pam.add_action( "Do : Global Place : 두개의 helper_scene_change가 동시에 작동하는 경우", KEY_Q, do_global_place__over_lap )
	pam.add_message( "   > helper_scene_change 의 작동이 겹치면 fade-in 처리가 완료되지 않는다." )
	pam.add_message( "   > scene 전환 과정에서 후 순위 node가 REMOVE_LAST_SCENE_WAIT 상태에서 빠져나오지 못하기 때문이다." )
	pam.add_message( "   > 가급적 global로 사용할 것." )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.TEST )


func _exit_tree() -> void:
	print( "test_helper___scene_change : _exit_tree" )



### Interface ####################################################
func do_child_place()->void:
	scene_change.start( test_helper___scene_change___exit_point_1.scene_path() )


func do_global_place()->void:
	var scene : GDPTHelper_SceneChange = scene_change_packed_scene.instantiate()
	get_tree().root.add_child( scene )
	
	scene.start( test_helper___scene_change___exit_point_1.scene_path(), 0.1, 2 )


func do_global_place__delete_when_finished()->void:
	var scene : GDPTHelper_SceneChange = scene_change_packed_scene.instantiate()
	get_tree().root.add_child( scene )
	
	scene.start( test_helper___scene_change___exit_point_1.scene_path(), 1, 3, true )


func do_global_place__over_lap()->void:
	var scene_1 : GDPTHelper_SceneChange = scene_change_packed_scene.instantiate()
	get_tree().root.add_child( scene_1 )
	scene_1.start( test_helper___scene_change___exit_point_1.scene_path(), 1, 3, true )
	
	var scene_2 : GDPTHelper_SceneChange = scene_change_packed_scene.instantiate()
	get_tree().root.add_child( scene_2 )
	scene_2.start( test_helper___scene_change___exit_point_2.scene_path(), 1, 3, true )
