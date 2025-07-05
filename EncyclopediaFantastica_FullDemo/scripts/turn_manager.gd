extends Node

var turn_queue := []
var current_unit := null

func _ready():
    turn_queue = get_tree().get_nodes_in_group("units")
    next_turn()

func next_turn():
    if turn_queue.is_empty():
        return
    current_unit = turn_queue.pop_front()
    if current_unit.has_method("take_turn"):
        current_unit.take_turn()
    turn_queue.append(current_unit)
