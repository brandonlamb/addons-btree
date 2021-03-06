tool
extends GraphNode

const type = 8

func _ready():
	$slot0/count.value = 0
	return

func _enter_tree():
	title = name
	return

func _on_repeat_resize_request(new_minsize):
	rect_size = new_minsize
	return

func _on_repeat_close_request():
	get_parent().child_delete(self)
	return

func get_data():
	return {
		"count":$slot0/count.value,
		"size":rect_size,
		"offset":offset
	}

func set_data(data):
	rect_size = data.size
	offset = data.offset
	$slot0/count.call_deferred("set_value", data.count)
	return

