class_name GDPTAction extends RefCounted



############################ Variable ############################
var message : String
var key : Key
var action : Callable

var color_4_message = Color.WHITE
var color_4_key = Color.WHITE
var color_4_base = Color.WHITE



############################ Override ############################
func _init(
	  _message : String
	, _key : Key
	, _action : Callable = ( func(): pass )
	
	, _color_4_message = Color.WHITE
	, _color_4_key = Color.GREEN
	, _color_4_base = Color.GRAY
)->void:
	message = _message
	key = _key
	action = _action
	
	color_4_message = _color_4_message
	color_4_key = _color_4_key
	color_4_base = _color_4_base
