class_name helper_log extends MarginContainer



### OnReady ######################################################
@onready var rich_text_label : RichTextLabel = $RichTextLabel



### Interface ####################################################
func add_normal( message : String )->void:
	rich_text_label.add_text( message + "\n" )
