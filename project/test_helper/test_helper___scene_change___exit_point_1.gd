class_name test_helper___scene_change___exit_point_1 extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_scene_change : exit point 1"

static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_lf()
	pam.add_mover( test_helper_root.scene_name(), KEY_ESCAPE, test_helper_root.scene_path() )
	pam.add_lf()
	pam.add_action( "helper_scene_change의 자가 삭제 기능 확인 : Show Root Children", KEY_1, do )
	pam.add_message( "Fade-in 종료 후 do를 수행해야 결과 확인 가능." )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.TEST )


func _enter_tree() -> void:
	print( "test_helper___scene_change___exit_point_1 : _enter_tree" )



### Interface ####################################################
func do()->void:
	var temp : String = ""
	
	temp += "[START] root.get_children()\n"
	for c in get_tree().root.get_children():
		temp +=( "     > %s\n" % c.name )
	temp += "[ END ] root.get_children()"
	
	$CanvasLayer/Label.text = temp
