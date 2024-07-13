extends GDPTScene



############################ Override ############################
func _ready():
	pam.set_name( "Test Main 2" )
	pam.add_split()
	pam.add_lf()
	pam.add_mover( "Test Main 1",	Key.KEY_ESCAPE, 	"res://test_main_1.tscn" )
	pam.add_lf()
	pam.add_lf()
	pam.add_mover( "Test Action 1",	Key.KEY_Q, 			"res://test_action_1.tscn" )
	pam.add_split()
	build_summary( eSceneType.ROOT )
