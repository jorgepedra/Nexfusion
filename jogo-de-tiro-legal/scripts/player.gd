extends CharacterBody2D

# Velocidade de movimento do jogador
@export var velocidade: float = 300.0

# Pega a referência correta do nó "player" (AnimatedSprite2D) que está na sua cena
@onready var sprite: AnimatedSprite2D = $player

func _ready() -> void:
	# Garante que o jogador comece o jogo na animação parado
	sprite.play("Idle")

func _physics_process(_delta: float) -> void:
	# 1. Captura o input das quatro direções de forma otimizada
	var direcao: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# 2. Aplica a direção na velocidade do CharacterBody2D
	if direcao != Vector2.ZERO:
		velocity = direcao * velocidade
		
		# --- ANIMAÇÃO DE CAMINHADA ---
		if sprite.animation != "Walk":
			sprite.play("Walk")
		
		# --- LÓGICA DE ESPELHAMENTO ---
		# Se estiver indo para a direita (X maior que 0), não espelha
		if direcao.x > 0:
			sprite.flip_h = false
		# Se estiver indo para a esquerda (X menor que 0), espelha o sprite
		elif direcao.x < 0:
			sprite.flip_h = true
			
	else:
		# Se nenhuma tecla for pressionada, o jogador para suavemente
		velocity = velocity.move_toward(Vector2.ZERO, velocidade)
		
		# --- ANIMAÇÃO DE PARADO ---
		if sprite.animation != "Idle":
			sprite.play("Idle")

	# 3. Função nativa do Godot que move o corpo e gerencia colisões com paredes automaticamente
	move_and_slide()
