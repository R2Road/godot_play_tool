class_name GDPTSceneHelper extends CanvasLayer



############################ Variable ############################
var play_action_manager : GDPTActionManager = GDPTActionManager.new()



############################ Override ############################
func _init()->void:
	var summary = RichTextLabel.new()
	summary.name = "Summary"
	summary.fit_content = true
	summary.bbcode_enabled = true
	summary.autowrap_mode = TextServer.AutowrapMode.AUTOWRAP_OFF
	summary.mouse_filter = Control.MouseFilter.MOUSE_FILTER_IGNORE
	add_child( summary )
	
	var fps_label = Label.new()
	fps_label.name = "FPS"
	add_child( fps_label )


func _enter_tree()->void:
	# 한 번 만 위치를 설정한다.
	$FPS.text = " \n\n\n " # 높이 할당을 위한 문자열 설정
	$FPS.position.y = get_viewport().size.y - $FPS.get_minimum_size().y


func _process( _delta : float )->void:
	$FPS.text = (
		  "Display : " + str( DisplayServer.screen_get_size().x ) + " x " + str( DisplayServer.screen_get_size().y )
		+ "\n"
		+ "Window : " + str( get_window().size.x ) + " x " + str( get_window().size.y )
		+ "\n"
		+ "Project : " + str( ProjectSettings.get_setting( "display/window/size/viewport_width" ) ) + " x " + str( ProjectSettings.get_setting( "display/window/size/viewport_height" ) )
		+ "\n"
		+ "fps : " + str( Engine.get_frames_per_second() ) + "/" + str( Engine.max_fps )
	)


func _input( event )->void:
	play_action_manager.do( event )
