extends Node2D

onready var hud =$HUD
onready var obstacleSpawner = $ObstacleSpawner
var score = 0 setget set_score
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func player_score():
	self.score +=1
	
func set_score(new_score):
	score = new_score
	hud.update(score)

# Called when the node enters the scene tree for the first time.
func _ready():
	obstacleSpawner.connect('obstacle_created',self,'_on_obs_created')
	pass # Replace with function body.
func _on_obs_created(obs):
	obs.connect('score',self,'player_score')

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Player_game_over():
	obstacleSpawner.stop()
	$Ground.get_node("Sprite/AnimationPlayer").stop()
	print(get_tree())
	get_tree().call_group('Obstacles','set_physics_process',false)
	pass # Replace with function body.
