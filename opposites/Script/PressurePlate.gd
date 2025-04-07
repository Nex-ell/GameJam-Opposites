extends StaticBody2D

# Doors
@onready var door_1: StaticBody2D = $"."
@onready var door_2: StaticBody2D = $"../Door2"
@onready var final_door_1: StaticBody2D = $"../FinalDoor1"
@onready var final_door_2: StaticBody2D = $"../FinalDoor2"


func _on_plate_door_1_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		door_1.position.x = 999999999999
		door_1.position.y = 999999999999


func _on_plate_door_2_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		door_2.position.x = 999999999999
		door_2.position.y = 999999999999


func _on_plate_final_1_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		final_door_1.position.x = 999999999999
		final_door_1.position.y = 999999999999


func _on_plate_final_2_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		final_door_2.position.x = 999999999999
		final_door_2.position.y = 999999999999
