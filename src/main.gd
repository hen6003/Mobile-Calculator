extends Control

var label_text: String = "0"
var label_text_save: String = ""
var operator_used: String = ""
var math: int
var clear: bool = true

# warning-ignore:unused_argument
func _process(_delta):
	$Label.set_text(label_text)

func _on_1_pressed():
	clear()
	label_text += "1"

func _on_2_pressed():
	clear()
	label_text += "2"

func _on_3_pressed():
	clear()
	label_text += "3"

func _on_4_pressed():
	clear()
	label_text += "4"

func _on_5_pressed():
	clear()
	label_text += "5"

func _on_6_pressed():
	clear()
	label_text += "6"

func _on_7_pressed():
	clear()
	label_text += "7"

func _on_8_pressed():
	clear()
	label_text += "8"

func _on_9_pressed():
	clear()
	label_text += "9"

func _on_0_pressed():
	label_text += "0"


func _on_minus_pressed():
	operator("-")

func _on_add_pressed():
	operator("+")

func _on_divide_pressed():
	operator("÷")

func _on_times_pressed():
	operator("×")


func _on_equal_pressed():
	match operator_used:
		"-":
			math = int(label_text_save) - int(label_text)
			print(math)
			label_text = str(math).strip_escapes()
		"+":
			math = int(label_text_save) + int(label_text)
			label_text = str(math).strip_escapes()
		"÷":
			math = int(label_text_save) / int(label_text)
			label_text = str(math).strip_escapes()
		"×":
			math = int(label_text_save) * int(label_text)
			label_text = str(math).strip_escapes()

	operator_used = ""
	clear = true


func operator(type: String):
	if operator_used == "":
		label_text_save = label_text
		label_text = ""

		operator_used = type

func clear():
	if clear:
		label_text = ""
		clear = false
