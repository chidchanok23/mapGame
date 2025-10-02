extends Control

@export var mode_scene: PackedScene
@export var setting_scene: PackedScene
@export var credit_scene: PackedScene


func _ready() -> void:
	AudioManager.play_bgm(load("res://assets/sound/horror song.mp3"))
	
func _on_play_pressed() -> void:
	if mode_scene:
		get_tree().change_scene_to_packed(mode_scene)


func _on_setting_pressed() -> void:
	if setting_scene:
		get_tree().change_scene_to_packed(setting_scene)


func _on_credit_pressed() -> void:
	if credit_scene:
		get_tree().change_scene_to_packed(credit_scene)


func _on_exit_pressed() -> void:
	get_tree().quit()
