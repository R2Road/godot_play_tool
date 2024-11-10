class_name test_action_mover___node2d_2_gdpt_scene extends Node2D



### GDPT Override ################################################
static func scene_name()->String:
	return "Action Mover : Node2D 2 GDPTScene"


static func scene_path()->String:
	return get_stack()[0]["source"].replace( ".gd", ".tscn" )



### Override #####################################################
func _ready():
	#
	# for Test
	#
	
	# 0, 0
	add_child( GDPT.helper_0_0.instantiate() )
	
	# Test Interface
	add_child( GDPT.build_scene_helper() )
	$GDPTSceneHelper.play_action_manager.owner = self
	$GDPTSceneHelper.play_action_manager.set_name( scene_name() )
	$GDPTSceneHelper.play_action_manager.add_split()
	$GDPTSceneHelper.play_action_manager.add_lf()
	$GDPTSceneHelper.play_action_manager.add_front( test_action_root.scene_name(), Key.KEY_ESCAPE, test_action_root.scene_path() )
	$GDPTSceneHelper.play_action_manager.add_lf2()
	$GDPTSceneHelper.play_action_manager.add_message( "이 Scene은 Node2D 기반 Scene이다." )
	$GDPTSceneHelper.play_action_manager.add_message( "ESC를 누르면 Node2D 에서 GDPTScene으로 전환한다." )
	$GDPTSceneHelper.play_action_manager.add_lf()
	$GDPTSceneHelper.play_action_manager.add_split()
	$GDPTSceneHelper/Summary.text = $GDPTSceneHelper.play_action_manager.build_summary()
