class_name AbstractShip 
extends CharacterBody2D

@onready var collision: CollisionShape2D = $collision
@onready var hitbox: Area2D = $hitbox
@export var team: int

@onready var _world = get_node("/root/World") 


func hit_by_projectile(p: Projectile):
    pass


func hitbox_area_entered(entered: Area2D):
    if entered is Projectile:
        hit_by_projectile(entered)


func launch_projectile(p: Projectile, launch_from: Vector2 = self.position, launch_trajectory: Vector2 = Vector2.ZERO):
    p.position = launch_from
    _world.add_child(p)
    p.launch(launch_trajectory)


func destroyed():
    queue_free()