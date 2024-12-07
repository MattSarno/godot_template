class_name MainGUI
extends Control

const SANDBOX: PackedScene = preload("res://worlds/sandbox.tscn")

@onready var start_menu: StartMenu = $Start

func _ready() -> void:
	start_menu.exit_button.pressed.connect(_on_exit_pressed)
	start_menu.start_button.pressed.connect(_on_start_pressed)

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_start_pressed() -> void:
	var world: Node = SANDBOX.instantiate()
	get_parent().add_child(world)
	
	start_menu.deactivate()
