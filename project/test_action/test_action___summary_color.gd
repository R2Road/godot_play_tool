class_name test_action___summary_color extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Action : Summary Color"


static func scene_path()->String:
	return super.scene_path()



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_split()
	pam.add_mover( test_action___root.scene_name(),		Key.KEY_SPACE, test_action___root.scene_path() )
	pam.add_split()
	pam.add_action( "Q", Key.KEY_Q, func(): $Label.text = "q" )
	pam.add_action( "W", Key.KEY_W, func(): $Label.text = "w" )
	pam.add_split()
	pam.add_message( "Message" )
	pam.add_split()
	pam.add_subject( "Subject" )
	pam.add_note( "Note 1" )
	pam.add_note( "Note 2" )
	pam.add_split()
	build_summary( eSceneType.TEST )