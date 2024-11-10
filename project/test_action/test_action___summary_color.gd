class_name test_action___summary_color extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "Action : Summary Color"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_exit()
	pam.add_message( "   > add_exit" )
	pam.add_split()
	pam.add_back( Key.KEY_SPACE )
	pam.add_message( "   > add_back" )
	pam.add_split()
	pam.add_front( "add_front : " + test_action_root.scene_name(),		Key.KEY_1, test_action_root.scene_path() )
	pam.add_root( "add_mover : " + test_action_root.scene_name(),		Key.KEY_2, test_action_root.scene_path() )
	pam.add_mover( "add_mover : " + test_action_root.scene_name(),		Key.KEY_3, test_action_root.scene_path() )
	pam.add_split()
	pam.add_action( "add_action", Key.KEY_Q, func(): $Label.text = "q" )
	pam.add_action( "add_action", Key.KEY_W, func(): $Label.text = "w" )
	pam.add_split()
	pam.add_message( "add_message" )
	pam.add_split()
	pam.add_subject( "add_subject" )
	pam.add_note( "add_note" )
	pam.add_note( "add_note" )
	pam.add_split()
	build_summary( eSceneType.TEST )
