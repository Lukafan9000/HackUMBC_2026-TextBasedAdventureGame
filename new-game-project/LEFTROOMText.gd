extends Label

@onready var textbox = $"."

func _ready():
	textbox.text = "An angry bird challenges you!"
