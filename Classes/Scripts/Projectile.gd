class_name Projectile
extends AnimatableBody2D

@export var team: String

var trajectory: Vector2

# Launching the trajectory
func launch(launch_trajectory):
	self.trajectory = launch_trajectory


# MAGIC METHODS
func _physics_process(delta):
	position += trajectory * delta
