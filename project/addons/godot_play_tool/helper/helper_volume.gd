class_name GDPTHelper_Volume extends Control



### Export #######################################################
@export var slider : GDPTHelper_HSlider



### Override #####################################################
func _init()->void:
	self.set_z_index( RenderingServer.CANVAS_ITEM_Z_MAX )



### Signal : Receiver ############################################
func _on_helper_hslider_value_changed( value: float ) -> void:
	print( str( value ) )
