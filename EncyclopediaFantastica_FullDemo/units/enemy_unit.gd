extends CharacterBody2D

var health := 10

func damage(amount):
    health -= amount
    print("Enemy took %d damage. Remaining: %d" % [amount, health])

func heal(amount):
    health += amount
    print("Enemy healed %d HP. Current: %d" % [amount, health])
