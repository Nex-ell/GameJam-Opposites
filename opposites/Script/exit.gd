extends Area2D

@export var target_level : PackedScene

signal append
signal erase

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):  # Check if the object is a player
		append.emit(area)

func _on_area_exited(area: Area2D) -> void:
	if area.is_in_group("player"):  # Check if the object is a player
		erase.emit(area)
