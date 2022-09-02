extends Node2D

var teste = false
var valor = 0
var numero = 0 # variavel não estava declarada corretamente
var lista = [] # lista não foi declarada como variavel
var nome: String

func _on_Button_pressed():
	numero = int($Button/LineEdit2.text) # Faltou o $
	nome = str($Button/LineEdit.text) # Faltou o str
	lista=[]

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	if len(lista) > 0:
		lista = []
	lista.append(numero)
	var numeroCopia = numero
	for i in range(10):
		numeroCopia+=1
		lista.append(numeroCopia)
		$Button2/Label.text = str(lista) # Faltou o str


func _on_Button3_pressed():
	var cont=0 # cont não foi declarado
	var i=0 # i não foi declarado
	while(len(lista) > i): #loop estava infinito por causa da falta do operador
		if(lista[i]%2==1):
			cont+=1
		i+=1
	print(cont)
	if(cont!=0): # if saiu do while para não repetir o baldo
		nome = nome+"baldo"
		$Button3/Label2.text = nome
