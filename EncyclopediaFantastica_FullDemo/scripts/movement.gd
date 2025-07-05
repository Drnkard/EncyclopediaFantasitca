extends CharacterBody2D

@export var grid_size := 32

func move_to(target_position: Vector2):
    var direction = (target_position - position).normalized()
    var distance = position.distance_to(target_position)
    if distance > grid_size:
        direction *= grid_size
    move_and_collide(direction)
