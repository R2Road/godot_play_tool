class_name test_helper_drag extends GDPTScene



######################### GDPT Override ##########################
static func scene_name()->String:
	return "Drag"


static func scene_path()->String:
	return super.scene_path()



############################ Override ############################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_message( " > 빨간점 : 카메라 중심점" )
	pam.add_message( " > 빨간색 박스를 Mouse로 Drag" )
	pam.add_lf()
	pam.add_action( "Camera U", Key.KEY_W, func(): $helper_point.position.y -= 10 )
	pam.add_action( "Camera D", Key.KEY_S, func(): $helper_point.position.y += 10 )
	pam.add_action( "Camera L", Key.KEY_A, func(): $helper_point.position.x -= 10 )
	pam.add_action( "Camera R", Key.KEY_D, func(): $helper_point.position.x += 10 )
	build_summary( eSceneType.TEST )
	
	#
	#
	#
	$Drag1/helper_drag.signal_drag_on.connect( func(): $Drag1/Status.text = "Start" )
	
	$Drag1/helper_drag.signal_drag_off.connect( func(): $Drag1/Status.text = "End" )
	$Drag1/helper_drag.signal_drag_off.emit()
	
	$Drag1/helper_drag.signal_position_changed.connect( func( _position ): $Drag1/Position.text = str( _position ) )
	$Drag1/helper_drag.signal_position_changed.emit( $Drag1.position )
