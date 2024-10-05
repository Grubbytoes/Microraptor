class_name Shootlfy
extends AbstractEnemy

@onready var sprite: AnimatedSprite2D = $sprite
@onready var anim: AnimationPlayer = $anim
@onready var shoot_timer: Timer = $shoot_timer


func hit_by_projectile(p: Projectile):
    if super.hit_by_projectile(p):
        $anim.play("hit")


func _ready():
    super._ready()

    sprite.play("default")
    shoot_timer.start(1.0)


func shoot():
    launch_projectile(bullet.instantiate(), gun.global_position, Vector2.DOWN * 100)
    shoot_timer.start(1.0)