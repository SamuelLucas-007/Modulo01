extends Node2D

var array = []
var adicionar

func sort():
	for j in range(array.size()-1, -1, -1):
		for k in range(1, j+1, 1):
			if array[k-1] > array[k]:
				var temmp = array[k-1]
				array[k-1] = array[k]
				array[k] = temmp
	$Button2/Label2.text = "A lista ordenada ficou assim: " + str(array)



func _on_Button_pressed():
	if len(array) <= 9:
		adicionar = float($Label/LineEdit.text)
		array.append(adicionar)
	else:
		$Label/Button.visible = false
		$Label/LineEdit.visible = false
		$Label.text = "Você já inseriu 10 números"
		$arrayInserido.text = "Lista inserida:" + str(array)



func _on_Button2_pressed():
	return sort()
