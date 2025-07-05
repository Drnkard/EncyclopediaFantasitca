extends Control

@export var player_unit: Node

func _ready():
    var button := Button.new()
    button.text = "Use Cursed Spoon"
    button.pressed.connect(_on_weapon_button_pressed)
    add_child(button)

func _on_weapon_button_pressed():
    if player_unit:
        var enemy = get_tree().get_nodes_in_group("enemies")[0]
        player_unit.attack(enemy)
