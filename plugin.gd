tool
extends EditorPlugin


func _enter_tree() -> void:
	add_autoload_singleton("Util", "res://addons/SquirrelFramework/scripts/core/Util.gd")
	add_autoload_singleton("Global", "res://addons/SquirrelFramework/scripts/core/Global.gd")
	add_autoload_singleton("ViewportManager", "res://addons/SquirrelFramework/scripts/core/ViewportManager.gd")
	add_autoload_singleton("StateManager", "res://addons/SquirrelFramework/scripts/core/StateManager.gd")
	add_autoload_singleton("Debug", "res://addons/SquirrelFramework/scripts/core/Debug.gd")

	if not ProjectSettings.has_setting("application/config/version"):
		ProjectSettings.set_setting("application/config/version", "1.0")

	ProjectSettings.save()


func _exit_tree() -> void:
	remove_autoload_singleton("Util")
	remove_autoload_singleton("Global")
	remove_autoload_singleton("ViewportManager")
	remove_autoload_singleton("StateManager")
	remove_autoload_singleton("Debug")
