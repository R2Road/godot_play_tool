class_name dev_root extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return ( 
			"Dev Root"
		+ 	" ( " + GDPT.version + " )"
	)


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_lf()
	pam.add_exit()
	pam.add_lf()
	pam.add_root( test_action_root.scene_name(),	Key.KEY_A,	test_action_root.scene_path() )
	pam.add_root( test_helper_root.scene_name(),	Key.KEY_S,	test_helper_root.scene_path() )
	pam.add_root( test_gdpt_root.scene_name(),		Key.KEY_D,	test_gdpt_root.scene_path() )
	pam.add_lf()
	pam.add_split()
	build_summary( eSceneType.ROOT )
	
	#
	#
	#
	GDPTHelper_Volume.apply_volume( 0, 70 )
	GDPTHelper_Volume.apply_volume( 1, 100 )
	GDPTHelper_Volume.apply_volume( 2, 100 )
