class_name PlayerShip
extends AbstractShip

# ONREADY
@onready var sprite: Sprite2D = $sprite

# PUBLIC
const ACCELERATION = 50
const MAX_SPEED = 125
const DRAG = 15

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


# OVERRIDES
func _physics_process(_delta):
    # Get input vector and velocity len
    _input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down").normalized()
    _velocity_len = velocity.length()

    # Accelerate or decelerate
    if (_input_vector):
        velocity += _input_vector * ACCELERATION
    elif velocity:
        velocity = velocity.normalized() * max(_velocity_len - DRAG, 0) 
    
    # Apply MAX_SPEED
    if _velocity_len > MAX_SPEED:
        velocity = velocity.normalized() * MAX_SPEED
    
    # Do important things!!
    animate()
    move_and_slide()