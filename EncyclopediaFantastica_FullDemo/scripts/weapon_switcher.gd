extends Control

@export var player_unit: Node
var weapons = []
var current_index = 0

func _ready():
    var btn = Button.new()
    btn.text = "Switch Weapon"
    btn.pressed.connect(_on_switch_weapon)
    add_child(btn)

func _on_switch_weapon():
    if weapons.size() == 0 or player_unit == null:
        return
    current_index = (current_index + 1) % weapons.size()
    player_unit.equipped_weapon = weapons[current_index]
    print("Switched to:", weapons[current_index].name)
