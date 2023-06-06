extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StartMenu_gui_input(event):
	var game = preload("res://World.tscn").instance()
	get_tree().get_root().add_child(game)
	hide()
	pass # Replace with function body.
