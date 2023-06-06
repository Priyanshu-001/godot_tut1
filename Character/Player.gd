extends RigidBody2D
class_name Player
onready var animator = $AnimationPlayer
var started:bool = false
export var FLAP_FORCE = -200
export var  max_rot = -30
signal game_over
var alive = true
func _ready():
	print("Hello")
	pass # Replace with function body.
func _is_falling():
	return linear_velocity.y > 0
func _check_limits():
	if rotation_degrees <= max_rot:
		angular_velocity = 0
		rotation_degrees = max_rot
	if  _is_falling():
		if rotation_degrees <=90:
			angular_velocity = 6
		else:
			angular_velocity =0 

func _physics_process(delta):
	var a_vel =0
	
	if Input.is_action_just_pressed("flap"):
		if !alive:
			return
		start()
		
		a_vel += 45
		linear_velocity.y  = FLAP_FORCE
	
	angular_velocity = a_vel
	_check_limits()
	
	
	#angular_velocity = 8
func flap():
	print("Flapping")
func die():
	$AnimationPlayer.stop()
	self.alive = false
	emit_signal('game_over')
	pass
func start():
	if started:
		return
	started = true
	gravity_scale = 5.0
	animator.play("Flap")

