extends Control
var info :PCInfo

@export var software_prefab = load("res://addons/GodotVirtualPC/prefabs/software.tscn")

func add_info(_info:PCInfo):
	info = _info

func _ready() -> void:
	load_softwares()

func load_softwares() -> void:
	var softwares = info.softwares
	for i in range(len(softwares)):
		var software_node = software_prefab.instantiate()
		software_node.init_software(softwares[i])
		software_node.open_software.connect(open_program)
		$VFlowContainer/HFlowContainer.add_child(software_node)

func open_program(info:SoftwareInfo):
	var software_window_node = info.software_window.instantiate()
	$windows.add_child(software_window_node)
	
