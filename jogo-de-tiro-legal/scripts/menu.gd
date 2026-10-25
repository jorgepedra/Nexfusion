extends Control

# Vamos pegar as referências direto da árvore de cenas
@onready var botao_comecar = $VBoxContainer/comecar
@onready var botao_sair = $VBoxContainer/sair

func _ready() -> void:
	# Conecta os sinais usando as variáveis seguras
	botao_comecar.pressed.connect(_ao_clicar_comecar)
	botao_sair.pressed.connect(_ao_clicar_sair)

func _ao_clicar_comecar() -> void:
	get_tree().change_scene_to_file("res://scenes/jogo.tscn")

func _ao_clicar_sair() -> void:
	get_tree().quit()
