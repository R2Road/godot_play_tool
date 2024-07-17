extends GDPTScene



############################ Override ############################
func _ready():
	pam.set_name( "Helper Root" )
	pam.add_split()
	pam.add_mover( "Dev Root",		Key.KEY_ESCAPE, "res://dev_root.tscn" )
	pam.add_lf()
	pam.add_mover( "Move2Center : with Viewport",	Key.KEY_1, "res://helper/helper_move2center_with_viewport.tscn" )
	pam.add_mover( "Move2Center : with Camera2D",	Key.KEY_2, "res://helper/helper_move2center_with_camera2d.tscn" )
	build_summary( eSceneType.TEST )
