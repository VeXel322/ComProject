extends Node2D

var Hp = 100
var Hunger = 100
var Thirst = 100
var Sanity = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func Hp_сhange(Hp,Hunger,Thirst,Sanity):
	while (true):
		if Hunger | Thirst | Sanity == 0:
			Hp = Hp - 1
		if Hp < 100 && Hunger && Thirst && Sanity != 0:
			Hp = Hp + 0.5
		await get_tree().create_timer(1).timeout

func Hunger_change(Hunger):
	while (true):
		Hunger = Hunger - 1
		if Hunger < 0:
			Hunger = 0
		await get_tree().create_timer(25).timeout

func eat(Hunger):
	Hunger = Hunger + 10
	if Hunger > 100:
		Hunger = 100

func Thirst_change(Thirst):
	while (true):
		Thirst = Thirst - 1
		if Thirst < 0:
			Thirst = 0
		await get_tree().create_timer(15).timeout

func drink(Thirst):
	Thirst = Thirst + 15
	if Thirst > 100:
		Thirst = 100

