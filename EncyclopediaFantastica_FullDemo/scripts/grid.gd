extends Node2D

@export var cell_size := Vector2(32, 32)

func world_to_map(world_pos: Vector2) -> Vector2i:
    return Vector2i(world_pos / cell_size)

func map_to_world(map_pos: Vector2i) -> Vector2:
    return map_pos * cell_size
