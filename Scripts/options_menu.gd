extends Node
#Ayarlar menüsündeki geri tuşuna basıldığında menüye dönen kod
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
