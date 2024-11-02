extends CharacterBody3D


var SPEED = 7.0
const JUMP_VELOCITY = 4.2
@onready var player = $"."
@onready var raycast: RayCast3D = $RayCast3D

#Karakterin zeminde olup olmadığını (zıplama kontrolü için) ve duvara çarpıp çarpmadığını kontrol eden kodlar
func _physics_process(delta: float) -> void:
	if raycast.is_colliding():
			game_over()
	
	#Yer çekimi ekler
	if not is_on_floor():
		velocity += get_gravity() * 1.5 * delta

	#Zıplama kodları
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	#Kullanıcı inputu alıp karakteri oynatmak için olan kodlar
	var input_dir := Input.get_vector("left", "right", "ui_up", "ui_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()

	move_and_slide()
	if direction:
		velocity.x = -direction.x * SPEED
		velocity.z = direction.z * 0

	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

func game_over():
	get_tree().change_scene_to_file("res://gameover_menu.tscn")
	
func _on_player_exited(player1:Node):
	print(player1, "exited")
