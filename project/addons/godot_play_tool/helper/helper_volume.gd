class_name GDPTHelper_Volume extends Control



### Export #######################################################
@export var bus_name : String = "Master"
@export var slider : GDPTHelper_HSlider



### Variable #####################################################
var bus_index : int = 0



### Override #####################################################
func _init()->void:
	self.set_z_index( RenderingServer.CANVAS_ITEM_Z_MAX )


func _ready()->void:
	bus_index = AudioServer.get_bus_index( bus_name )
	$helper_hslider.set_name_label( bus_name )



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
	
