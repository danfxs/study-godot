extends Node2D

@onready var plane: Sprite2D = $Plane
@onready var helicopter: Sprite2D = %Helicopter

var _target: Vector2 = Vector2.ZERO

const ROT_SPEED: float = PI / 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#plane.rotation = helicopter.global_rotation
	pass

#func _unhandled_input(event: InputEvent) -> void:
	#if (event.is_action_pressed("SetTarget")):
		#_target = get_global_mouse_position()
		#plane.look_at(_target)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#plane.position = plane.position.move_toward(_target, 50 * delta)
	#plane.position += plane.transform.x.normalized() * 50.0 * delta
	plane.move_local_x(50.0 * delta)
	if Input.is_action_pressed("ui_right"):
		plane.rotate(ROT_SPEED * delta)
	if Input.is_action_pressed("ui_left"):
		plane.rotate(-ROT_SPEED * delta)
	#plane.position.x += 15 * delta
	#helicopter.position.x += 15 * delta
	#helicopter.position.x += 15 / helicopter.global_scale.x * delta
	#print("helicopter.position: ", helicopter.position)
	#print("helicopter.global_position: ", helicopter.global_position)
	#print("helicopter.scale: ", helicopter.scale)
	#print("helicopter.global_scale: ", helicopter.global_scale)
	#print("helicopter.rotation: ", rad_to_deg(helicopter.rotation))
	#print("helicopter.global_rotation: ", rad_to_deg(helicopter.global_rotation))
	#print("helicopter.rotation_degrees: ", helicopter.rotation_degrees)
	#print("helicopter.global_rotation_degrees: ", helicopter.global_rotation_degrees)
	#helicopter.translate(Vector2(30.0, 50.0) * delta)
	#helicopter.global_translate(Vector2(30.0, 50.0) * delta)
