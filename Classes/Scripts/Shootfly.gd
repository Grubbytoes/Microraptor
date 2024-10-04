class_name Shootlfy
extends AbstractEnemy

@onready var sprite: AnimatedSprite2D = $sprite

func _ready():
    sprite.play("default")