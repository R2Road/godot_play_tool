class_name GDPTHelper_SceneChange extends Node2D



### Variable #####################################################
func scene_change_with_path( _path : String )->void:
	get_tree().change_scene_to_file( _path )
