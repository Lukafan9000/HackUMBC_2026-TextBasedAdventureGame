extends Label

@onready var textbox = $"../../Main room AFTER FIGHTS/Label"

func _ready():
	return

var ACT2advanceDialouge = 0 
func _input(event):
	if event.is_action_pressed("Dialouge forward") and ACT2advanceDialouge > 1:
		ACT2advanceDialouge += 1 
		ACT2ENDmovetext()
		

var ACT2ENDDia = [
	"After defeating the two enemies, you can faintly hear the sound of a door opening.",
	"Your only option is to move forwards deeper into the temple"
]
func ACT2ENDmovetext():
	ACT2ENDDia[ACT2advanceDialouge]
