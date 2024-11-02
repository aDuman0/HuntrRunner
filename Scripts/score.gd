extends Label3D

var time_out = 1
var time = time_out

var initial_wait_time = 5 
var is_waiting = true

#Oyun başladığı andan itibaren 5 saniye geçtikten sonra skor saymaya başlar
func _process(delta: float) -> void:
	if is_waiting:
		if initial_wait_time > 0:
			initial_wait_time -= delta
		else:
			is_waiting = false
			text = str("Score: " + str(ScoreManager.score))
	else:
		if time > 0:
			time -= delta
		else:
			time = time_out
			ScoreManager.score += 1
			text = str("Score: " + str(ScoreManager.score))
