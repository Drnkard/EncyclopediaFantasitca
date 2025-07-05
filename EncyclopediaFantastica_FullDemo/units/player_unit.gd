extends CharacterBody2D

@export var equipped_weapon: Weapon

func _ready():
    var enemy = get_node("../EnemyUnit")
    attack(enemy)

func attack(target):
    if equipped_weapon:
        equipped_weapon.execute(self, target)
