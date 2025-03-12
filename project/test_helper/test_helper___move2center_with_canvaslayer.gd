class_name test_helper___move2center_with_canvaslayer extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_move2center : with CanvasLayer"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_message( " > 빨간 원은 ( 0, 0 ) 에 위치한다." )
	pam.add_lf()
	pam.add_message( " > Move2Center를 붙인 노드의 부모가 CanvasLayer인 경우." )
	build_summary( eSceneType.TEST )
