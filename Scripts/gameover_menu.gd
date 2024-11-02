extends Node

func _on_retry_pressed() -> void:
	ScoreManager.reset_score()
	get_tree().change_scene_to_file("res://scene.tscn")


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
