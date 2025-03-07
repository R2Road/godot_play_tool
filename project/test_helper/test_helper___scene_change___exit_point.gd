class_name test_helper___scene_change___exit_point extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_scene_change : exit point"

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
	pam.add_message( "Fade-in 종료 후 do를 수행할 것." )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.TEST )



### Interface ####################################################
func do()->void:
	print( "[START] root.get_children()" )
	
	var temp : String
	for c in get_tree().root.get_children():
		temp +=( "\t> %s\n" % c.name )
	$CanvasLayer/Label.text = temp
	
	print( "[ END ] root.get_children()" )
