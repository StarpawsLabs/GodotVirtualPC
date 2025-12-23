extends TextureRect
@export var info : PCInfo

func _ready() -> void:
	var pc = preload("res://addons/GodotVirtualPC/prefabs/pc.tscn")
	var pcNode = pc.instantiate()
	
	pcNode.add_info(info)
	add_child(pcNode)
	texture = info.wallpaper
