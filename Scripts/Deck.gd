class_name Deck



var _cards: Array = []
var _jokers: bool = false

func _init(add_jokers: bool = false, start_shuffled: bool = true):
	_jokers = add_jokers
	_generate()
	
	if start_shuffled:
		shuffle(false)
	
func _generate():
	if _jokers:
		_cards = range(54)
	else:
		_cards = range(52)

func draw(count: int):
	var drawn_cards: Array = []
	for i in count:
		drawn_cards.append(_cards.pop_front())
	return drawn_cards

func shuffle(replenish: bool):
	if replenish:
		_generate()
	_cards.shuffle()
