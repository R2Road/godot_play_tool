extends Node2D


############################  Export  ############################
@export var rect : Rect2 = Rect2( 0, 0, 10, 10 )
@export var color_drag_on = Color( 0, 1, 0 )
@export var color_drag_off = Color( 1, 0, 0 )
@export var show_guide = true
@export var out_line_bold = 1.0



############################ Variable ############################
var drag_on = false
var last_mouse_position : Vector2



############################ Override ############################
func _init():
	self.set_z_index( RenderingServer.CANVAS_ITEM_Z_MAX )


func _draw():
	if not show_guide:
		return
	
	if drag_on:
		draw_rect( rect, color_drag_on, false, out_line_bold )
	else:
		draw_rect( rect, color_drag_off, false, out_line_bold )


func _process( _delta ):
	if drag_on:
		get_parent().position += ( get_global_mouse_position() - last_mouse_position )
		last_mouse_position = get_global_mouse_position()


func _unhandled_input(event):
	if not event is InputEventMouseButton:
		return
	
	if MOUSE_BUTTON_LEFT != event.button_index:
		return
	
	if drag_on:
		if event.is_released():
			drag_on = false
			# _draw is only called once
			# need redraw : use CanvasItem.queue_redraw()
			queue_redraw()
	else:
		if event.is_pressed():
			if rect.has_point( to_local( event.position ) ):
				drag_on = true
				last_mouse_position = event.position
				# _draw is only called once
				# need redraw : use CanvasItem.queue_redraw()
				queue_redraw()
	
	# Input 전파 중지.
	get_viewport().set_input_as_handled()
