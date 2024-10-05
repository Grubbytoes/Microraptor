class_name Shootlfy
extends AbstractEnemy

@onready var sprite: AnimatedSprite2D = $sprite
@onready var anim: AnimationPlayer = $anim


func hit_by_projectile(p: Projectile):
    super.hit_by_projectile(p)
    $anim.play("hit")


func _ready():
    sprite.play("default")