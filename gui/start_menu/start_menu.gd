class_name StartMenu
extends CanvasLayer

@onready var exit_button: Button = $Buttons/Exit
@onready var start_button: Button = $Buttons/Continue

func deactivate() -> void:
	hide()
	set_process(false)
	set_physics_process(false)
	set_process_input(false)
	set_process_unhandled_input(false)

func activate() -> void:
	show()
	set_process(true)
	set_physics_process(true)
	set_process_input(true)
	set_process_unhandled_input(true)
