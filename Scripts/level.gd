extends Node3D

#Atanan değişkenler
@export var modules: Array[PackedScene] = []
var time = 0
var amount = 10
var rng = RandomNumberGenerator.new()
var offset = 12.4
var score = 0

#Modülleri havuzdan seçen kod
func _ready():
	
	SilentWolf.configure({
		"api_key": "lHBiSxveaI5j4mtZdkcwgaKZNL5nmc1J9XXQf0xz",
		"game_id": "hantirrunner",
		"game_version": "1.0.2",
		"log_level": 1
	})

	SilentWolf.configure_scores({
		"open_scene_on_close": "res://menu.tscn"
	})
	
	for n in amount:
		spawnmodule(n*offset)
	
#Her kare için geçen süre
func _process(_delta):
	time += _delta
	pass

#Modül oluşturmak için çalışan kodlar
func spawnmodule(n):
	rng.randomize()
	var num = rng.randi_range(0, modules.size()-1)
	var instance
	
	if time < 0.1:
		instance = modules[0].instantiate()
	else:
		instance = modules[num].instantiate()
	
	instance.position.z = n
	add_child(instance)
	
