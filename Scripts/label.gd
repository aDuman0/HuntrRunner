extends Label
#Skorun ekrana yazılmasını sağlayan kod
func _process(delta: float) -> void:
	text = str("Skor: " + str(ScoreManager.score))
