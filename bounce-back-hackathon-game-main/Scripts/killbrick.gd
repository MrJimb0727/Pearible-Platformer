extends Area2D

@onready var splat = $Splat

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _on_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("Player"):
		splat.play()
		get_tree().reload_current_scene()
		Globals.sizevar = randf_range(0.05, 3)
		Globals.size = Vector2(Globals.sizevar, Globals.sizevar)
		
