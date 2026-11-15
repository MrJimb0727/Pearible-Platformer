extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_body_entered(body) -> void:
	var currScene = str(get_tree().current_scene.scene_file_path)
	
	if body.name == "Player":
		if currScene == "res://Scenes/level1.tscn":
			get_tree().change_scene_to_file("res://Scenes/level2.tscn")
		elif currScene == "res://Scenes/level2.tscn":
			get_tree().change_scene_to_file("res://Scenes/level3.tscn")
		elif currScene == "res://Scenes/level3.tscn":
			get_tree().change_scene_to_file("res://Scenes/level4.tscn")
		elif currScene == "res://Scenes/level4.tscn":
			get_tree().change_scene_to_file("res://Scenes/level5.tscn")
		elif currScene == "res://Scenes/level5.tscn":
			get_tree().change_scene_to_file("res://Scenes/level6.tscn")
		elif currScene == "res://Scenes/level6.tscn":
			get_tree().change_scene_to_file("res://Scenes/level7.tscn")
		elif currScene == "res://Scenes/level7.tscn":
			get_tree().change_scene_to_file("res://Scenes/level8.tscn")
		elif currScene == "res://Scenes/level8.tscn":
			get_tree().change_scene_to_file("res://Scenes/victory.tscn")
