extends Node

enum Preset
{
	Start
}

var TextConfigurations = {
	Preset.Start: {
		"font_size": 48,
		"position": Vector2(425, 400),
		"line_length": 650
	},
}

@onready var typewritterTimer = $TypewritterTimer
@onready var textNode = $CanvasLayer/TextNode

var printedText := ""
var currentLineLength : float
var currentSpeed : float

func _ready():
	typewritterTimer.timeout.connect(print_next_char)

func print_text(text, speed, font_size, position, line_length):
	printedText = text
	currentSpeed = speed
	textNode.clear()

func print_next_char():
	print("!!!")
