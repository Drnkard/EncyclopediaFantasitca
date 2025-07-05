extends CharacterBody2D

@export var health := 10

func take_turn():
    print(name, "is thinking...")
    await get_tree().create_timer(1.0).timeout
    print(name, "ends turn.")
    get_node("/root/Game/TurnManager").next_turn()

func damage(amount):
    health -= amount
    print(name, "took", amount, "damage. Remaining HP:", health)

func heal(amount):
    health += amount
    print(name, "healed", amount, "HP. Current HP:", health)
