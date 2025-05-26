extends Node

@onready var actualOverlay = $"CanvasLayer/ActualOverlay"

signal tween_finished

func hide_immediate():
	actualOverlay.color.a = 1

func tween_show(duration):
	var tween = create_tween()
	tween.tween_property(actualOverlay, "color:a", 0, duration).set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_SINE)
	await tween.finished
	emit_signal("tween_finished")
