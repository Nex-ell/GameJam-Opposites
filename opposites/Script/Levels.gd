extends Node

@export var target_level : PackedScene
var players_in_area = []

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Reset"):
		get_tree().reload_current_scene()
	
func _on_exit_append(player) -> void:
	players_in_area.append(player)  # Add the player to the list
	check_players_in_area()

func _on_exit_erase(player) -> void:
	players_in_area.erase(player)  # Remove the player from the list
	
func check_players_in_area():
	if players_in_area.size() >= 2:
		get_tree().change_scene_to_packed(target_level)
		print("Two or more players are in the area!")
