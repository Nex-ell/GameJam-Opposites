extends Area2D

func _on_area_entered(area):
	if area:
		get_tree().reload_current_scene()
