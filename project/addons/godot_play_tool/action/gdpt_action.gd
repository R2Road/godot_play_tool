class_name GDPTAction extends RefCounted



############################ Variable ############################
var name : String
var key : Key
var action : Callable



############################ Override ############################
func _init( _name : String, _key : Key, _action : Callable = ( func(): pass ) ):
	name = _name
	key = _key
	action = _action
