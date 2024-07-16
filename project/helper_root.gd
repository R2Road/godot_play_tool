extends GDPTScene



############################ Override ############################
func _ready():
	pam.set_name( "Helper Root" )
	pam.add_split()
	pam.add_mover( "Dev Root",		Key.KEY_ESCAPE, "res://dev_root.tscn" )
	build_summary( eSceneType.TEST )
