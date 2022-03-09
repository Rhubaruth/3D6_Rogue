extends Control


onready var Roller = get_node("/root/Roller");


# Called when the node enters the scene tree for the first time.
func _ready():
	
	print(Roller.roll("3D6"))
	
	var avg = 0
	
	for _i in range(100):
		avg += Roller.roll("1d2")
	
	print(avg/100.0);
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
