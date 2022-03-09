extends Node

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	pass


func roll(dice : String):
	dice = dice.to_upper()
	if not ("D" in dice):
		return 0
	
	var value : int = 0;
	var count : int = int( dice.split("D", false)[0] )
	var die : int = int( dice.split("D", false)[1] )
	
#	print("value: ", value)
#	print("count: ", count)
#	print("die: ", die)
	
	for c in range(count):
		
		value += rng.randi_range(1, die)
	
#	print("Rolled ", dice, " for ", str(value));
	return value
