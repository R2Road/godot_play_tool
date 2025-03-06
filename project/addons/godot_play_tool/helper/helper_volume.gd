@tool
class_name GDPTHelper_Volume extends MarginContainer



### Export #######################################################
@export var slider : GDPTHelper_HSlider

@export var bus_name : String:
	set( value ):
		if slider:
			slider.title_label.set_text( value )
	get():
		if slider:
			return slider.title_label.text
		else:
			return ""

@export var value : float:
	set( _value ):
		if slider:
			slider.hslider.value = _value
	get():
		if slider:
			return slider.hslider.value
		else:
			return 0



### Variable #####################################################
var bus_index : int = 0



### Override #####################################################
func _init()->void:
	self.set_z_index( RenderingServer.CANVAS_ITEM_Z_MAX )


func _ready()->void:
	bus_index = AudioServer.get_bus_index( bus_name )
	slider.title_text = bus_name



### Interface ####################################################
func set_volume( _percentage : float ) -> void:
	update_volume( _percentage )
	slider.value = _percentage


func update_volume( _percentage : float ) -> void:
	var scale : float = 20
	var divisor : float = 50
	
	var new_volume : float = scale * ( log( _percentage / divisor ) / log( 10 ) )
	
	AudioServer.set_bus_volume_db( bus_index, new_volume )
	
	#print( "Volume : Percentage %f | DB : %f" % [_percentage, new_volume] )



### Signal : Receiver ############################################
func _on_helper_hslider_value_changed( _percentage : float ) -> void:
	update_volume( _percentage )
	
