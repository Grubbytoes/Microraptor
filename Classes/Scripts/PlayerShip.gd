class_name PlayerShip
extends AbstractShip

# ONREADY
@onready var sprite: Sprite2D = $sprite
@onready var gun: Node2D = $gun
@onready var bullet = preload("res://Classes/player_projectile.tscn")
@onready var gun_timer: Timer = $gun_timer

# PUBLIC
const MAX_SPEED = 125
const DRAG = 40
const SHOOTING_SPEED = 0.25

var is_firing: bool

# 'PRIVATE'
var _input_vector: Vector2
var _velocity_len: float


func animate():
	if _input_vector.x > 0:
		sprite.flip_h = true
		sprite.frame = 1
	elif _input_vector.x < 0:
		sprite.flip_h = false
		sprite.frame = 1
	else:
		sprite.frame = 0


func ready_to_shoot():
	if is_firing:
		launch_projectile(bullet.instantiate(), gun.global_position, Vector2.UP * 300)
		gun_timer.start(SHOOTING_SPEED)


# OVERRIDES
func _physics_process(_delta):
	# Get input vector and velocity len
	_input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down").normalized()
	_velocity_len = velocity.length()

	# Accelerate or decelerate
	if (_input_vector):
		velocity = velocity.lerp(_input_vector * MAX_SPEED, 0.25)
	elif velocity:
		velocity = velocity.normalized() * max(_velocity_len - DRAG, 0) 
	
	# Shoot bullets
	if Input.is_action_just_pressed("action_b") and !is_firing:
		is_firing = true
		gun_timer.start(0.05)
	elif Input.is_action_just_released("action_b"):
		is_firing = false
	
	# Do important things!!
	animate()
	move_and_slide()
