class_name helper_code extends CodeEdit



############################ Override ############################
func show_code( path : String, line_start : int, line_end : int )->void:
	var file = FileAccess.open( path, FileAccess.READ )
	
	# Move
	for i in line_start - 1:
		file.get_line()
	
	# Code 구성.
	var code : String
	for i in range( line_start, line_end ):
		code += file.get_line()
		code += "\n"
	
	# Show
	self.text = code
