extends AnimatedSprite2D

# AJUSTADO: Agora carrega o arquivo da CENA (.tscn) para que o .instantiate() funcione perfeitamente.
# (Se a sua cena "bullet.tscn" estiver dentro de alguma pasta, lembre-se de ajustar o caminho entre aspas)
const CENA_BALA = preload("res://scenes/bullet.tscn")

# A distância em pixels que a arma vai ficar afastada do centro do jogador
@export var raio_orbita: float = 35.0

func _ready() -> void:
	play("Gun")
	animation_finished.connect(_ao_terminar_animacao)

func _process(_delta: float) -> void:
	var posicao_mouse: Vector2 = get_global_mouse_position()
	var direcao_para_o_mouse: Vector2 = (posicao_mouse - get_parent().global_position).normalized()
	
	position = direcao_para_o_mouse * raio_orbita
	look_at(posicao_mouse)
	
	if posicao_mouse.x < get_parent().global_position.x:
		flip_v = true
	else:
		flip_v = false

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			if animation != "Gun Fire":
				play("Gun Fire")
				_atirar() # Chama a função que cria a bala física

# --- FUNÇÃO RESPONSÁVEL POR CRIAR A BALA ---
func _atirar() -> void:
	# 1. Cria uma nova cópia (instância) da bala
	var nova_bala = CENA_BALA.instantiate()
	
	# 2. Define a posição inicial da bala exatamente onde a arma está
	nova_bala.global_position = global_position
	
	# 3. Calcula a direção da arma até o mouse
	var direcao_tiro: Vector2 = (get_global_mouse_position() - global_position).normalized()
	
	# 4. Passa a direção calculada para dentro do script da bala
	nova_bala.direcao = direcao_tiro
	
	# 5. Faz o desenho da bala rodar para apontar certinho para onde está voando
	nova_bala.rotation = direcao_tiro.angle()
	
	# 6. Adiciona a bala na cena principal
	get_tree().current_scene.add_child(nova_bala)

func _ao_terminar_animacao() -> void:
	if animation == "Gun Fire":
		play("Gun")
