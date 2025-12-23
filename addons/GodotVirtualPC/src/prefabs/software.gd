extends Control
signal  open_software(info)
var info : SoftwareInfo
var pc 
func init_software(_info:SoftwareInfo):
	info = _info
	$icon.texture_normal = info.icon
	$name.text = info.name


func _on_icon_pressed() -> void:
	open_software.emit(info)
