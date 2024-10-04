class_name AbstractShip 
extends CharacterBody2D

@onready var collision: CollisionShape2D = $collision
@onready var hitbox: Area2D = $hitbox


func launch_projectile(p: Projectile, launch_from: Vector2 = self.position, launch_trajectory: Vector2 = Vector2.ZERO):
    p.position = launch_from
    add_sibling(p)
    p.launch(launch_trajectory)