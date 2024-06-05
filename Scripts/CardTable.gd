extends Node2D

func _ready():
	var deck = Deck.new(true, false)
	var hand1 = deck.draw(1)
	var hand1_assets = []
	var keys = Enums.CardNames.keys()
	for i in hand1:
		hand1_assets.append(Card.new(keys[i]))
		
