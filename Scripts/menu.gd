extends Node

#Oyna butonuna basıldığında sahneyi oynatır
func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scene.tscn")

#Ayarlar butonuna basınca ayarlar menüsü açılır
func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://options_menu.tscn")

#Çıkış butonuna basılınca oyunu kapatır
func _on_quit_pressed() -> void:
	get_tree().quit()
