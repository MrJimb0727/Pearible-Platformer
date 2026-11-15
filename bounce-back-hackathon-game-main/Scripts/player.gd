extends CharacterBody2D


const SPEED = 1000.0
const JUMP_VELOCITY = -800

@onready var player: CharacterBody2D = $"."

func _ready() -> void:
	player.scale = Vector2(Globals.sizevar, Globals.sizevar)

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY * Globals.sizevar
		
		if velocity.y < -1750:
			velocity.y = -1750
		elif velocity.y > -800:
			velocity.y = -800

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _process(_delta: float) -> void:
	Globals.size = player.scale
	
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
		Globals.sizevar = randf_range(0.05, 3)
