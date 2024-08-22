class_name test_action___key_color extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Action : Key Color"


static func scene_path()->String:
	return super.scene_path()



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_mover( test_action___root.scene_name(),		Key.KEY_ESCAPE, test_action___root.scene_path() )
	pam.add_action( "Q", Key.KEY_Q, func(): $Label.text = "q" )
	pam.add_action( "W", Key.KEY_W, func(): $Label.text = "w" )
	pam.add_split()
	build_summary( eSceneType.ROOT )
