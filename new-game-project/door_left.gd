extends Button
@onready var MainNode = $".."

@onready var Leftroom = $"../../LEFTROOM"

func _pressed():
	MainNode.visible = false
	Leftroom.visible = true 
	#Eagle room 
