extends GDPTScene



############################ Override ############################
func _ready():
	pam.set_name( "Test Main" )
	pam.add_split()
	pam.add_exit()
	pam.add_lf()
	pam.add_mover( "Test Main 2",	Key.KEY_1, 		"res://test_main_2.tscn" )
	pam.add_lf()
	pam.add_lf()
	pam.add_mover( "Test Action 1",	Key.KEY_Q, 		"res://test_action_1.tscn" )
	pam.add_split()
	build_summary( eSceneType.ROOT )
