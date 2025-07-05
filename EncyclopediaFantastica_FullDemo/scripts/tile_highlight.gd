extends Node2D

@export var tile_size := 32
@export var color := Color(1, 1, 0, 0.5)

func _draw():
    draw_rect(Rect2(Vector2.ZERO, Vector2(tile_size, tile_size)), color)
