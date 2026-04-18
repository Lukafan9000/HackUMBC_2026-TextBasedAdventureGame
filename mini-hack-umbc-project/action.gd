extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$actions_Menu.hide()
	$items_menu.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_action_pressed() -> void:
	$actions_Menu.show()


	


func _on_energy_pressed() -> void:
	pass # Replace with function body.


func _on_bckbtn_pressed() -> void:
	$actions_Menu.hide()


func _on_bckbtn_2_pressed() -> void: 
	$items_menu.hide()


func _on_items_pressed() -> void:
	$items_menu.show()
