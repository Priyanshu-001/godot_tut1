extends Node2D
signal obstacle_created(obs)
onready var timer = $Timer
var Obstacle = preload("res://Env/Obstacle.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func start():
	timer.start()
func stop():
	timer.stop()

func spwan_obstacle():
	var obstacle = Obstacle.instance()
	add_child(obstacle)
	obstacle.position.y = 150 + randi()%100
	emit_signal('obstacle_created',obstacle)
	#obstacle.position.y = 60
func _on_Timer_timeout():
	print('spawnnn')
	spwan_obstacle() # Replace with function body.
