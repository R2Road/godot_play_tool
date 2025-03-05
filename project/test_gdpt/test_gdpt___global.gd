class_name test_gdpt___global extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "Global : Preloaded Helper Check"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_lf()
	pam.add_back( Key.KEY_ESCAPE )
	pam.add_lf()
	pam.add_subject( "GDPT에 미리 읽기 해놓은 helper의 packed_scene들 : Link 점검" )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.TEST )
	
	#
	# Start Test
	#
	var root = Node2D.new()
	root.position = Vector2( 100, 100 )
	add_child( root )
	
	#
	# Load Packed Scene
	#
	var constant_map : Dictionary = GDPT.get_script().get_script_constant_map().duplicate()
	var packed_scene_count : int = 0
	
	print( "[S] Load : Helper Scenes" )
	
	for constant_name : String in constant_map:
		if -1 == constant_name.find( "packed_scene" ):
			continue
		
		packed_scene_count += 1
		print( "\t%2d : %s" % [packed_scene_count, constant_name] )
		
		var packed_scene = constant_map[constant_name]
		root.add_child( packed_scene.instantiate() )
	
	print( "[E] Load : Helper Scenes" )
