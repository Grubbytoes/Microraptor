class_name Projectile
extends Area2D

@export var team: int

var trajectory: Vector2

# Launching the trajectory
func launch(launch_trajectory):
	self.trajectory = launch_trajectory


# MAGIC METHODS
func _physics_process(delta):
	global_position += trajectory * delta
