# score_manager.gd
extends Node

#Skoru diğer kodlarda kullanılabilmesi için oluşturulmuş Auto Loader
var score: int = 0

#Her oyun başında skoru sıfırlayan kod
func reset_score():
	score = 0
