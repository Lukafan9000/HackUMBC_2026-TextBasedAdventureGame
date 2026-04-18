extends Label

@onready var TextBox = $"."

func _ready() -> void:
	Intro()

var IntroDialougePosition = 0
var TempleEntranceDia = 0
var IsIntroFinished = false
var IsTempIntroFinished = false
var optionSelected = false
func _input(event):
	
	if event.is_action_pressed("Dialouge forward"):
		if IntroDialougePosition < 2 and IsIntroFinished ==false:
			IntroDialougePosition +=1 
			Intro()
		if TempleEntranceDia < 2 and IsTempIntroFinished == false and IsIntroFinished == true and optionSelected == true:
			TempleEntranceDia +=1 
			TempleIntro()
		print(IsIntroFinished)
	if IntroDialougePosition == 2:
		IsIntroFinished = true
	
			#player first enters the temple
		if event.is_action_pressed("Yes") and not optionSelected:
			TempleIntro()
			optionSelected = true
			print(optionSelected)
		elif event.is_action_pressed("No") and not optionSelected:
			TextBox.text = "You decide to wait out the storm, bored but safe"
			optionSelected = true
			print(optionSelected)
			#end the game here
func Intro():
	TextBox.text = IntroDialouge[IntroDialougePosition]
	
			

#display the text here
var IntroDialouge= [
	"It's pouring outside. In searching for cover, you find an old temple for shelter.", 
	"It looks like it'll be a few hours before the rain lets up.",  
	"Explore the temple? Y/N",
	]

func TempleIntro():
	TextBox.text = DialougeInTemple[TempleEntranceDia]

var DialougeInTemple = [
	"After stepping into the old temple, you see cracks and vines running through the temple.",
	"As you walk into the center of the room, you hear a leaf get crushed behind you", 
	"Spinning around in a panic, you see a starving wolf behind you"
]
