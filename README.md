# 🎮 Arena Shooter 2D — Godot 4

Um jogo de ação e sobrevivência em arena 2D (*top-down shooter*) desenvolvido na **Godot Engine 4** com **GDScript**. O jogador enfrenta hordas crescentes de inimigos em um combate frenético, buscando manter sua vida alta e alcançar a classificação máxima.

---

## 🎯 Sobre o Projeto (Versão Demo)

* **Sobrevivência Agressiva:** A vida máxima vai até `200`, mas valores acima de `100` decaem com o tempo, incentivando o jogador a eliminar inimigos constantemente para recuperar vida.
* **Sistema de Ranking Dinâmico (`F` até `P`):** A HUD muda de cor gradualmente conforme a pontuação sobe (`F` a `S+++`) e ativa um efeito arco-íris brilhante ao atingir o rank **`P`** (`2000+` pontos).
* **Combate e Hordas:** Inimigos surgem ao redor das bordas da arena (`1280x720`) e atacam com investidas telegrafadas (saltos que atravessam outros inimigos no ar).
* **Game Feel:** Efeitos elásticos (*squash & stretch*) nos personagens, tremor de câmera (*camera shake*) e partículas persistentes no chão.

---

## 🎮 Como Jogar (Demo)

1. Acesse a aba **[Releases](../../releases)** aqui no GitHub e baixe o arquivo `.zip` da versão demo mais recente.
2. Extraia o conteúdo em uma pasta de sua preferência.
3. Execute o arquivo do jogo para iniciar.

*(Caso queira rodar ou modificar o código-fonte: abra o arquivo `project.godot` na **Godot 4.x** e pressione **`F5`**).*

---

## 💡 Ideias Futuras & Planejamento

### 🛒 Sistema de Loja e Moedas Elementais
* **Inimigos Elementais:** Cada tipo de inimigo representará um elemento químico, influenciando suas habilidades e ataques.
* **Moedas e Upgrades:** Ao derrotar inimigos, o jogador coleta moedas (elementais ou uma moeda universal, em definição) para comprar novas armas e melhorias.
  * *Design de Armas:* Caso cada elemento tenha sua própria moeda, as armas desbloqueadas terão relação direta com o elemento do inimigo derrotado. Caso a moeda seja universal, os inimigos terão elementos variados e a loja será livre.

### 📈 Evolução do Sistema de Pontuação e Rank
* **Multiplicador de Recompensas:** A nota alcançada na partida multiplicará os ganhos de moedas (ex: **Rank A = 1.5x**, **Rank S++ = 1.7x**, e assim por diante).
* **Pontuação Dinâmica:** Atualmente em fase de testes com pontos fixos por abate. Futuramente incluirá bônus por abates múltiplos (duplo, triplo) e penalidades na pontuação ao sofrer dano.

### 🧪 Elementos Químicos e Efeitos de Munição
Conceitos de armas e habilidades inspirados em reações químicas reais:

* **Combustão e Explosão**
  * **Fósforo Branco (`P`):** Incendeia instantaneamente em contato com o ar, causando dano contínuo de fogo e iluminando áreas escuras.
  * **Sódio (`Na`) / Potássio (`K`):** Reagem violentamente com a água, gerando explosões massivas em inimigos molhados, sob chuva ou em poças.
  * **Magnésio (`Mg`):** Gera um clarão branco intenso no impacto, atuando como munição cegante (*flashbang*) que atordoa os inimigos.
  * **Césio (`Cs`):** Explode ao entrar em contato com qualquer traço de umidade corporal ou ambiental, funcionando como munição de fragmentação.

* **Gelo e Controle de Grupo**
  * **Nitrogênio Líquido (`N`):** Congela o alvo no impacto, reduzindo sua velocidade e tornando sua armadura quebradiça para o próximo disparo.
  * **Hélio Superfluido (`He`):** Resfria instantaneamente mecanismos e armas inimigas, fazendo com que travem ou superaqueçam ao tentar atirar.

* **Corrosão e Toxicidade**
  * **Flúor (`F`):** Altamente reativo, derrete escudos de energia e atravessa armaduras pesadas por corrosão.
  * **Mercúrio (`Hg`):** Projétil líquido encapsulado que se espalha no impacto, aplicando envenenamento lento e reduzindo a precisão do alvo.
  * **Arsênio (`As`):** Aplica dano tóxico silencioso que bloqueia a regeneração de vida por alguns segundos.
  * **Cloro (`Cl`):** Libera uma nuvem de gás tóxico no impacto, ideal para controle de área e para forçar inimigos a saírem de cobertura.

* **Eletricidade e Magnetismo**
  * **Cobre (`Cu`) / Prata (`Ag`):** Condutores extremos que fazem a descarga elétrica saltar para inimigos próximos (especialmente em alvos molhados ou metálicos).
  * **Neodímio (`Nd`):** Cria um campo magnético no local do impacto, atraindo disparos seguintes ou desarmando inimigos próximos.

* **Impacto Pesado e Perfuração**
  * **Tungstênio (`W`):** Munição ultradensa e resistente ao calor que atravessa paredes, coberturas e múltiplos inimigos em linha reta.
  * **Urânio Empobrecido (`U`):** Perfura blindagens pesadas ganhando penetração conforme a velocidade do disparo e deixa um rastro leve de radiação.

### 👹 Bosses e Progressão de Fases
* Após sobreviver a uma determinada quantidade de hordas, surgirá um **Chefe (Boss)** temático com ataques baseados em um elemento específico.
* Derrotar o chefe desbloqueia a próxima fase, introduzindo novos cenários e tipos inéditos de inimigos.

### 🎵 Interface e Áudio
* **Menu Principal e Configurações:** Serão implementados assim que o jogo contar com uma variedade maior de inimigos, além de trilha sonora e efeitos sonoros (SFX).
