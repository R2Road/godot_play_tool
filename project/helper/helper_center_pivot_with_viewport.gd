extends GDPTScene



############################ Override ############################
func _ready():
	pam.set_name( "Helper Center Pivot : with Viewport" )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_message( " > 빨간 원은 ( 0, 0 ) 에 위치한다." )
	build_summary( eSceneType.TEST )
