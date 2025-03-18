class_name test_helper___code extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "helper_code"


static func scene_path()->String:
	return super.scene_path()



#### Export ######################################################
@export var helper_code_1 : GDPTHelper_Code
@export var helper_code_2 : GDPTHelper_Code
@export var helper_code_3 : GDPTHelper_Code



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_split()
	build_summary( eSceneType.TEST )
	
	helper_code_1.show_range( scene_path().replace( ".tscn", ".gd" ), 6, 7 )
	helper_code_2.show_range( scene_path().replace( ".tscn", ".gd" ), 34, 40 )
	helper_code_3.show_all( scene_path().replace( ".tscn", ".gd" ) )


### Interface ####################################################
func test()->void:
	pass
	# 출력 요청 라인이 실제 파일을 넘어가면 어떻게 되는지 확인 용도.
