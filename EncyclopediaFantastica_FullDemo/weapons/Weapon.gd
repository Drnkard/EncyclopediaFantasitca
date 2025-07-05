extends Resource
class_name Weapon

@export var name: String = "Cursed Spoon"
@export var description: String = "A utensil with malicious culinary intent."
@export var damage: int = 5
@export var cursed_chance: float = 0.25

func execute(user: Node, target: Node):
    if randf() < cursed_chance:
        print("The Cursed Spoon heals!")
        if target.has_method("heal"):
            target.heal(damage)
    else:
        print("The Cursed Spoon hurts!")
        if target.has_method("damage"):
            target.damage(damage)
