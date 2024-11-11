class_name helper_log extends MarginContainer



### OnReady ######################################################
@onready var rich_text_label : RichTextLabel = $RichTextLabel

@onready var scroll_container : ScrollContainer = $ScrollContainer
@onready var vbox_container : VBoxContainer = $ScrollContainer/VBoxContainer



### Override #####################################################
func _ready()->void:
	var scroll_bar : VScrollBar = scroll_container.get_v_scroll_bar()
	scroll_bar.changed.connect( _on_scroll_bar_changed )


### Interface ####################################################
func add_normal( message : String )->void:
	rich_text_label.add_text( message + str( rich_text_label.get_line_count() ) + "\n" )
	var l = Label.new()
	l.text = "> asdf\nasdfasdf" + str( rich_text_label.get_line_count() )
	vbox_container.add_child( l )



### Signal : Receiver ############################################
func _on_scroll_bar_changed()->void:
	scroll_container.scroll_vertical = scroll_container.get_v_scroll_bar().max_value
