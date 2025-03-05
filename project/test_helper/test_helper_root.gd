class_name test_helper_root extends GDPTScene



### GDPT Override ################################################
static func scene_name()->String:
	return "Helper"


static func scene_path()->String:
	return super.scene_path()



### Override #####################################################
func _ready():
	pam.set_name( scene_name() )
	pam.add_split()
	pam.add_front( dev_root.scene_name(),			Key.KEY_ESCAPE, dev_root.scene_path() )
	pam.add_lf()
	pam.add_mover( test_helper___point.scene_name(),		Key.KEY_1, test_helper___point.scene_path() )
	pam.add_mover( test_helper___line.scene_name(),			Key.KEY_2, test_helper___line.scene_path() )
	pam.add_mover( test_helper___reticle.scene_name(),		Key.KEY_3, test_helper___reticle.scene_path() )
	pam.add_mover( test_helper___0_0.scene_name(),			Key.KEY_4, test_helper___0_0.scene_path() )
	pam.add_mover( test_helper___circle.scene_name(),		Key.KEY_5, test_helper___circle.scene_path() )
	pam.add_mover( test_helper___rect.scene_name(),			Key.KEY_6, test_helper___rect.scene_path() )
	pam.add_lf()
	pam.add_lf()
	pam.add_mover( test_helper___move2center_with_viewport.scene_name(),	Key.KEY_Q, test_helper___move2center_with_viewport.scene_path() )
	pam.add_mover( test_helper___move2center_with_camera2d.scene_name(),	Key.KEY_W, test_helper___move2center_with_camera2d.scene_path() )
	pam.add_mover( test_helper___drag.scene_name(),		Key.KEY_E, test_helper___drag.scene_path() )
	pam.add_mover( test_helper___input.scene_name(),	Key.KEY_R, test_helper___input.scene_path() )
	pam.add_lf()
	pam.add_lf()
	pam.add_mover( test_helper___hslider.scene_name(),	Key.KEY_A, test_helper___hslider.scene_path() )
	pam.add_mover( test_helper___code.scene_name(),		Key.KEY_S, test_helper___code.scene_path() )
	pam.add_mover( test_helper___output.scene_name(),	Key.KEY_D, test_helper___output.scene_path() )
	pam.add_mover( test_helper___volume.scene_name(),	Key.KEY_F, test_helper___volume.scene_path() )
	pam.add_lf()
	build_summary( eSceneType.ROOT )
