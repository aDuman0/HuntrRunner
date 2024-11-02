extends Node3D

@onready var level = $"../"
var speed = 20
	
#Modüllerin oluşması hızını ve nerede oluşacaklarını belirleyen kodlar
func _process(delta):
	position.z -= speed * delta 
	if position.z < -15:
		level.spawnmodule(position.z + (level.amount * level.offset))
		queue_free()
	
