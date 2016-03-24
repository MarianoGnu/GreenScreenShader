
extends TextureFrame

export(Texture) var background1
export(Texture) var background2
export(Texture) var background3
export(Texture) var background4
export(Texture) var background5
export(Texture) var background6
export(Texture) var background7
export(Texture) var background8
export(Texture) var background9

var b = []
var t

func _ready():
	t = Timer.new()
	t.set_wait_time(3)
	t.set_one_shot(false)
	call_deferred("add_child", t)
	t.start()
	b.push_back(background1)
	b.push_back(background2)
	b.push_back(background3)
	b.push_back(background4)
	b.push_back(background5)
	b.push_back(background6)
	b.push_back(background7)
	b.push_back(background8)
	b.push_back(background9)
	change_background()

func change_background():
	for bg in b:
		set_texture(bg)
		yield(t,"timeout")
	change_background()

