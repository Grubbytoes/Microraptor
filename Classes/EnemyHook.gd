class_name EnemyHook
extends PathFollow2D

@export var speed: int


func _physics_process(delta):
    progress += speed * delta    