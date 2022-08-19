extends Control

var arrayFruits = ["Grape","Banana","Apple"]
var arrayEmpty = []

# Exercicio 1
func _on_Button_pressed():
	$Button/Label1.text = String(arrayFruits)

# Exercicio 2
func _on_Button2_pressed():
	arrayEmpty.push_back($Button2/LineEdit1.text)
	$Button2/Label2.text = String(arrayEmpty)

# Exercicio 3
func _on_Button3_pressed():
	$Button3/Label3.text = "Oiiiiiiiiiiiiiiiii"


# Exercicio 4
func _on_Button4_pressed():
	var text = $Button4/LineEdit2.text
	$Button4/Label4.text = text
