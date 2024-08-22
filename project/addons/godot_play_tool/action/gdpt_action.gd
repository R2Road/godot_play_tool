class_name GDPTAction extends RefCounted



############################ Variable ############################
var name : String
var key : Key
var action : Callable

var color_4_name = Color.WHITE
var color_4_key = Color.WHITE
var color_4_base = Color.WHITE



############################ Override ############################
func _init(
	  _name : String
	, _key : Key
	, _action : Callable = ( func(): pass )
	
	, _color_4_name = Color.WHITE
	, _color_4_key = Color.GREEN
	, _color_4_base = Color.GRAY
)->void:
	name = _name
	key = _key
	action = _action
	
	color_4_name = _color_4_name
	color_4_key = _color_4_key
	color_4_base = _color_4_base
