extends Area2D

@onready var splat= $Splat

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _on_body_entered(body) -> void:
	if body.name == "Player":
		splat.play()
		await get_tree().create_timer(0.5).timeout
		get_tree().reload_current_scene()
		Globals.sizevar = randf_range(0.05, 3)
		Globals.size = Vector2(Globals.sizevar, Globals.sizevar)
