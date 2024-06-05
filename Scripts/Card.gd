class_name Card

var _obj: Node2D
var _sprite: Sprite2D

func _init(type: String = "card_back"):
	var card_scene = preload("res://Scenes/card.tscn")
	_obj = card_scene.instantiate()
	_sprite = _obj.get_node("Sprite2D")
	print(_sprite.texture)
	_sprite.texture = load("res://Assets/Cards/Large/card_spades_A.png")#load("res://Assets/Cards/Large/" + type + ".png")
	print(_sprite.texture)
	
	
	
