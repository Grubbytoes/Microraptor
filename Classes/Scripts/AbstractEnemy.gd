class_name AbstractEnemy
extends AbstractShip

@export var hp: int
@onready var gun: Node2D = $gun
@onready var bullet = preload("res://Classes/enemy_projectile.tscn")

# Called when hit by any projectile, regardless of whether or not it has any effect
# returns true if the projectile causes damage
func hit_by_projectile(p: Projectile) -> bool:
    if self.team != p.team:
        take_damage(1)
        return true

    return false


func take_damage(d: int):
    hp -= d
    if hp <= 0:
        destroyed()


func _ready():
    team = 0