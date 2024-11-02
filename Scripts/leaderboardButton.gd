extends Node

var playerName


func _on_button_submit_pressed() -> void:
	if isWhiteSpace($LineEdit.text):
		$incorrect.visible = true
	else:
		playerName = $LineEdit.text
		SilentWolf.Scores.save_score(playerName, ScoreManager.score)
		$incorrect.visible = false
		get_tree().change_scene_to_file("res://addons/silent_wolf/Scores/Leaderboard.tscn")

func isWhiteSpace(char: String) -> bool:
	return char in [" ", "\t", "\n", "\r", "\v", "\f", "", "Enter name:"]


func _on_line_edit_focus_entered() -> void:
	$LineEdit.text = ""
