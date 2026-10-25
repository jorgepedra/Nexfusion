extends Area2D

# Velocidade que a bala vai voar pela tela
@export var velocidade: float = 600.0

# Esta variável vai guardar a direção (vetor) para onde a bala deve ir
var direcao: Vector2 = Vector2.ZERO

func _ready() -> void:
	# Conecta o sinal que avisa quando a bala saiu da tela
	# O nó VisibleOnScreenNotifier2D precisa estar na cena para isso funcionar
	$VisibleOnScreenNotifier2D.screen_exited.connect(_ao_sair_da_tela)

func _physics_process(delta: float) -> void:
	# Move a bala na direção definida multiplicada pela velocidade
	position += direcao * velocidade * delta

# Função que roda automaticamente quando a bala sai dos limites da tela (960x540)
func _ao_sair_da_tela() -> void:
	queue_free() # Deleta a bala do jogo com segurança para limpar a memória
