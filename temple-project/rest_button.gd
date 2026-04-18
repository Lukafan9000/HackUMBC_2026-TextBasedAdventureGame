extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Global.hp)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if Global.hp < Global.max_hp:
		Global.hp += 5
		if Global.hp > Global.max_hp:
			Global.hp = Global.max_hp
			
	print(Global.hp)
	print("")
		
