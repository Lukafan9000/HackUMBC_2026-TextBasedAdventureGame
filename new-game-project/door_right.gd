extends Button

@onready var MainNode = $".."
@onready var Rightroom=  $"../../RIGHTROOM" 

func _pressed():
	MainNode.visible = false
	Rightroom.visible = true
	#mini golem room
