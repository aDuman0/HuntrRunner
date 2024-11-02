extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

  SilentWolf.configure({
	"api_key": "lHBiSxveaI5j4mtZdkcwgaKZNL5nmc1J9XXQf0xz",
	"game_id": "HantırRunner1",
	"log_level": 1
  })

  SilentWolf.configure_scores({
	"open_scene_on_close": "res://menu.tscn"
  })
