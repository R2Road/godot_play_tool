extends Node2D



### Summary #####################################################
#
# Scene 기동시에 부모의 위치를 Viewport 중앙 또는 Camera 위치로 옮겨준다.
#
#################################################################



### Override #####################################################
func _ready()->void:
	do()



### Interface ####################################################
func do()->void:
	#
	# Move2Center 를 MainScene으로 구동한 경우 문제가 된다.
	# Scene 기본 구성 : Root > MainScene > ...
	#
	if not get_parent().get_parent():
		return
	
	var target_world_position : Vector2
	
	# 목표 world position 확보
	if get_viewport().get_camera_2d():
		target_world_position = get_viewport().get_camera_2d().get_screen_center_position()
	else:
		target_world_position = get_viewport().size * 0.5
	
	# 부피가 있는 부모 Node 라면 절반만큼 당겨준다.
	if get_parent() is Control:
		target_world_position -= ( get_parent().get_minimum_size() * get_parent().scale * 0.5 )
	
	get_parent().position = get_parent().get_parent().to_local( target_world_position )
