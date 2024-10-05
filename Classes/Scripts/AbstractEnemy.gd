class_name AbstractEnemy
extends AbstractShip

@export var hp: int

func hit_by_projectile(p: Projectile):
    if self.team != p.team:
        take_damage(1)


func take_damage(d: int):
    hp -= d
    if hp <= 0:
        destroyed()