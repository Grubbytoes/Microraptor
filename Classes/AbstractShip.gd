class_name AbstractShip 
extends CharacterBody2D

@onready var collision: CollisionShape2D = $collision
@onready var hitbox: Area2D = $hitbox
signal destroyed