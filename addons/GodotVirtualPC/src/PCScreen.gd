extends TextureRect
@export var info : PCInfo

func _ready() -> void:
	texture = info.wallpaper
	load_softwares()


func load_softwares() -> void:
	var softwares = info.softwares
	for i in range(len(softwares)):
		print(softwares[i].name)
