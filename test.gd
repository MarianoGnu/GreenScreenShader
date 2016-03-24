tool

extends VideoPlayer

export(bool) var playing = false setget set_time,get_time
var last_pos = -1

func _ready():
	if (get_tree().is_editor_hint()):
		play()
		set_paused(!playing)
	var t = Timer.new()
	t.set_one_shot(false)
	t.connect("timeout",self,"play")
	t.set_wait_time(6)
	call_deferred("add_child",t)
	t.start()


func set_time(val):
	playing = val
	set_paused(!val)

func get_time():
	return playing
