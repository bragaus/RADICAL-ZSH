# ═══════════════════════════════════════════════════════════════════════════════
#
#        TRACTADO DE CONFIGURAÇÃO DO INTERPRETADOR Z-SHELL
#
#   Apresentado á douta congregação dos terminaes no anno da graça de
#   MDCCCXCVIII, este modesto compendio, no qual o auctor — doutor em
#   sciencias mathematicas — se propõe a ordenar, segundo o rigoroso
#   methodo euclidiano, as definições, axiomata, funcções e abreviaturas
#   (vulgo "aliases") que governam a sua machina de calcular.
#
#   ADVERTENCIA AO LEITOR: a ordem das proposições não é arbitraria.
#   Tal como num tractado de geometria, cada lemma depende dos que o
#   precedem; que ninguem ouse permutar as secções sem antes demonstrar
#   a independencia das suas variaveis.
#
#   INDICE DAS SECÇÕES:
#     § I .... Prolegomenos — das definições primordiaes
#     § II ... Da theoria do Oh My Zsh — axiomata e postulados
#     § III .. Das funcções — theoremas e demonstrações
#     § IV ... Do disparo automatico do tmux — postulado da inicialização
#     § V .... Das grandezas ambientaes — exportações e caminhos
#     § VI ... Das abreviaturas — taboa de symbolos
#     § VII .. Epilogo — da saudação ao viajante
#
#                                  — Prof. Dr. BRAGA USS, Cathedratico
# ═══════════════════════════════════════════════════════════════════════════════


# ───────────────────────────────────────────────────────────────────────────────
# § I. PROLEGOMENOS — DAS DEFINIÇÕES PRIMORDIAES
#
#   "Antes de edificar, cumpre assentar os alicerces." Declaram-se aqui as
#   constantes primitivas sem as quaes proposição alguma subsiste.
# ───────────────────────────────────────────────────────────────────────────────

# Definição 1. Seja ZSH o caminho onde reside a bibliotheca Oh My Zsh.
export ZSH="$HOME/.oh-my-zsh"

# Definição 2. Invoque-se o zoxide, engenho que apprende os directorios
# mais frequentados pelo observador e a elles o transporta com celeridade.
eval "$(zoxide init zsh)"

# Definição 3. Annexe-se o Flutter ao PATH — mas sómente se ainda lá não
# estiver, pois duplicar um termo numa somma ordenada é vicio de calculo.
if [[ ":$PATH:" != *":$HOME/development/flutter/bin:"* ]]; then
	export PATH="$HOME/development/flutter/bin:$PATH"
fi


# ───────────────────────────────────────────────────────────────────────────────
# § II. DA THEORIA DO OH MY ZSH — AXIOMATA E POSTULADOS
#
#   AXIOMA FUNDAMENTAL: toda variavel de configuração deve preceder a
#   invocação `source $ZSH/oh-my-zsh.sh`, sob pena de nullidade absoluta.
#   Conserve-se pois esta ordem com o zelo de quem guarda um theorema.
# ───────────────────────────────────────────────────────────────────────────────

# Postulado 1. Do thema estético que reveste o prompt.
ZSH_THEME=adben
#ZSH_THEME_RANDOM_QUIEt=true (es legazin)

# Postulado 2. Do conjuncto (finito, porém vasto) dos themas candidatos,
# para o caso de o acaso ser chamado a decidir.
ZSH_THEME_RANDOM_CANDIDATES=("3den" "Soliah" "adben" "af-magic" "afowler" "agnoster" "alanpeabody" "amuse" "apple" "arrow" "aussiegeek" "avit" "awesomepanda" "bira" "blinks" "bureau" "candy-kingdom" "candy" "clean" "cloud" "crcandy" "crunch" "cypher" "dallas" "darkblood" "daveverwer" "dieter" "dogenpunk" "dpoggi" "dst" "dstufft" "duellj" "eastwood" "edvardm" "emotty" "essembeh" "evan" "fino-time" "fino" "fishy" "flazz" "fletcherm" "fox" "frisk" "frontcube" "funky" "fwalch" "gallifrey" "gallois" "garyblessington" "gentoo" "geoffgarside" "gianu" "gnzh" "gozilla" "half-life" "humza" "imajes" "intheloop" "itchy" "jaischeema" "jbergantine" "jispwoso" "jnrowe" "jonathan" "josh" "jreese" "jtriley" "juanghurtado" "junkfood" "kafeitu" "kardan" "kennethreitz" "kiwi" "kolo" "kphoen" "lambda" "linuxonly" "lukerandall" "macovsky-ruby" "macovsky" "maran" "mgutz" "mh" "michelebologna" "mikeh" "miloshadzic" "minimal" "mira" "mlh" "mortalscumbag" "mrtazz" "murilasso" "muse" "nanotech" "nebirhos" "nicoulaj" "norm" "obraun" "oldgallois" "peepcode" "philips" "pmcgee" "pygmalion-virtualenv" "pygmalion" "random" "re5et" "refined" "rgm" "risto" "rixius" "rkj-repos" "rkj" "robbyrussell" "sammy" "simonoff" "simple" "skaro" "smt" "sonicradish" "sorin" "sporty_256" "steeef" "strug" "sunaku" "sunrise" "superjarin" "suvash" "takashiyoshida" "terminalparty" "theunraveler" "tjkirch" "tjkirch_mod" "tonotdo" "trapd00r" "wedisagree" "wezm+" "wezm" "wuffers" "xiong-chiamiov-plus" "xiong-chiamiov" "ys" "zhann")

# Postulado 3. Da distincção entre maiusculas e minusculas na completação.
CASE_SENSITIVE="true"

# Postulado 4. Da actualização automatica da bibliotheca, dispensando o
# auctor de intervenções manuaes.
zstyle ':omz:update' mode auto

# Postulado 5. Das commodidades menores: correcção orthographica dos
# commandos, reticencias de espera na completação, e o formato das datas
# nos annaes do historico.
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"

# Postulado 6. Da enumeração dos plugins admittidos á sessão.
plugins=(git zsh-navigation-tools vim-interaction)

# Escholio. Liga-se a tecla ^R ao widget de historico das navigation-tools.
# NOTA BENE: esta ligação precede deliberadamente o carregamento do
# Oh My Zsh — assim se achava no manuscripto original, e assim permanece,
# para que nenhuma precedencia seja subtrahida.
autoload znt-history-widget
zle -N znt-history-widget
bindkey "^R" znt-history-widget

# THEOREMA DE CARREGAMENTO. Estando postos os axiomata supra, invoque-se
# a bibliotheca. Tudo o que a este ponto se segue já opera sob seu imperio.
source $ZSH/oh-my-zsh.sh

# Corollario. Achando-se o observador em connexão remota (SSH), seja o
# venerando vim o seu editor predilecto.
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi


# ───────────────────────────────────────────────────────────────────────────────
# § III. DAS FUNCÇÕES — THEOREMAS E DEMONSTRAÇÕES
#
#   Reunem-se nesta secção as funcções do auctor. Sendo meras definições,
#   nada executam até que sejam invocadas; a sua ordem entre si é, pois,
#   indifferente — mas todas devem preceder o § IV, que d'ellas depende.
# ───────────────────────────────────────────────────────────────────────────────

# THEOREMA I (da navegação errante). A funcção y invoca o navegador yazi
# e, findo o passeio, transporta o observador ao ultimo directorio
# visitado — salvo se este coincidir com o ponto de partida.
# Demonstração: inscreve-se o destino num ficheiro temporario; lê-se;
# compara-se com $PWD; sendo distincto e existente, migra-se; e por fim
# reduz-se o ficheiro a cinzas. C.Q.D.
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# ─── THEOREMA II (magnum opus) — DO GERENCIADOR DE SESSÕES tmux ────────────────
#
#   A funcção que se segue sobrescreve o commando nativo `tmux`, offerecendo
#   ao observador um menu interactivo (fzf, ou numerico na sua ausencia)
#   para crear, annexar, exterminar e rebaptizar sessões.
#
#   Preserva-se abaixo, intacto qual frontispicio historico, o memorial
#   illustrado do proprio auctor — documento de epocha que nenhum
#   copista ousaria emendar.
# ───────────────────────────────────────────────────────────────────────────────

tmux() {
  # Definições chromaticas: as constantes ANSI de que se tingem os menus.
  local R=$'\e[0m'
  local RED=$'\e[38;5;196m'    # vermelho sangue
  local GRN=$'\e[38;5;46m'     # verde matrix
  local YLW=$'\e[38;5;226m'    # amarelo choque
  local CYN=$'\e[38;5;51m'     # ciano elétrico
  local MGT=$'\e[38;5;201m'    # magenta psicodélico
  local WHT=$'\e[97m'          # branco puro
  local DIM=$'\e[2m'           # escurecido
  local BLD=$'\e[1m'           # negrito
  local BLK=$'\e[30m'          # preto (para contraste)
  local ORAN=$'\e[38;5;208m'   # Laranja neon

  # Lemma II.1 — do frontispicio que encima cada tela.
  # ── HEADER ────────────────────────────────────────────
  _header() {
    echo "${BLD}${ORAN}┌──────────────────────────────────────────────────────────────┐${R}"
    echo "${BLD}${ORAN}│ (う-´)▄︻デ═══一* BRAGA USS TERMINAL | if it moves compile it!${R}"
    echo "${BLD}${ORAN}└──────────────────────────────────────────────────────────────┘${R}"
    echo ""
  }

  # Lemma II.2 — da gravura maior, exhibida nas grandes occasiões.
  # ── LUCY ꨄ♡ ─────────────────────────────────────────────────────────
  _art() {
    echo "${MGT}⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀${R}"
    echo "${MGT}⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀${R}"
    echo "${MGT}⠀⣿⣿⣿⣿⣿⣿⣿⣷⢿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀${R}"
    echo "${MGT}⢀⣿⠘⣿⡿⣿⣿⣿⣿⡎⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⡇⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀${R}"
    echo "${MGT}⠈⣿⠀⢿⣿⢹⣻⣿⣯⣿⡄⢻⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡞⣿⣿⣿⡄${R}"
    echo "${MGT}⠀⣿⡄⠘⣿⡇⢿⣿⡿⡜⢿⣀⣹⣯⠿⠟⠛⠋⠁⠉⠉⠉⠈⠀⢿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣧${R}"
    echo "${MGT}⠀⢿⣇⠀⠹⠿⠌⠋⠋⠉⠉⠉⠁⠀⣀⣠⡤⠶⢶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⣿⣿⣿${R}"
    echo "${MGT}⠀⠀⢻⡤⠖⣒⣢⣄⠀⠀⠀⠀⠀⠀⠀⡟⠀⠀⠈⢿⠓⣻⡿⠋⠀⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⡟${R}"
    echo "${MGT}⠀⠀⠀⢹⣌⣠⠶⣾⣷⡄⠀⠀⠀⠀⠀⠀⠀⢀⢀⣀⣽⠋⠀⠀⠀⢹⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⠿⠋⠀${R}"
    echo "${MGT}⠀⠀⠀⢸⣿⣿⡄⠘⠭⡇⠀⠀⠀⠀⠀⠀⠀⠈⠻⠛⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣷⢿⣿⣿⣿⠟⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⢸⣿⣿⡍⠳⢾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣧⢸⣿⣿⣿⣿⣿⣿⣿⣿⠸⢛⠟⠁⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⢸⣿⣿⣇⢀⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⢿⠔⠁⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠨⣿⣿⣿⡌⣷⣄⠠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⣿⣿⣇⠹⡌⠉⠁⠀⠀⠀⠀⣀⡤⢤⣴⡶⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⠋⣾⢹⣿⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⣿⣿⣯⠀⠹⣄⠀⠀⠰⣯⣵⢟⣋⣽⡋⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⠀⣿⠸⠟⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⢸⣿⣿⠀⠀⠙⢦⡀⠀⠈⠿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⡿⠀⠉⠀⠀⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⢸⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⠋⠀⣿⣿⣿⡇⠀⠀⣀⣠⣤⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⠀⣿⣿⡀⠀⠀⠀⢻⣿⣿⣄⠀⠀⠀⠀⠀⣀⣴⠛⠁⠀⠀⠀⣿⣿⣿⣷⣶⠿⠛⠋⠉⠘⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠸⣿⣿⣿⣦⣀⣠⣴⡟⠋⢹⠀⠀⣀⣠⡴⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⢸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}${R}"
  }

  # Lemma II.3 — da gravura menor, reservada á hypothese do conjuncto
  # vazio de sessões.
  # ── ARTE ASCII PEQUENA (APENAS QUANDO NÃO HÁ SESSÕES) ────────────
  _small_art() {
    echo "${MGT}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⡔⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⢚⣉⣠⡽⠂⠀⠀⠀⠀⡰⢋⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢴⡆⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⠀⢀⡤⠐⢊⣥⠶⠛⠁⢀⠄⡆⣠⠤⣤⠞⢠⠿⢥⡤⠀⠀⠠⢤⠀⠀⠀⠤⠤⠤⡄⢠⠤⠄⠤⠀⠀⠀⠒⣆⡜⣿⣄⠀⡤⢤⠖⣠⣀⠤⢒⣭⠶⠛⠃⠀⠀${R}"
    echo "${MGT}⢀⣀⡠⢴⣎⣥⣴⣾⣟⡓⠒⠒⠒⠺⣄⡋⢀⡾⢃⣴⢖⣢⣞⢁⣋⣉⣹⠏⠚⠛⢛⣉⣤⡴⢞⠃⣰⠾⠟⣛⣩⢵⢶⡟⣰⠇⠘⡼⢡⡟⣀⡋⢵⡞⠋⠁⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠈⠢⠄⠤⠤⠤⠤⠤⠴⠤⠴⠶⠶⢾⠟⣱⡿⢤⢿⣕⠾⣿⣿⣩⡭⢤⠞⣰⠶⢤⣀⡉⠓⢾⡍⣠⠴⠾⠛⠹⠡⣟⡁⢰⢏⣼⡇⢰⣿⢀⠟⠳⣤⣌⣦⡀⠀⠀⠀⠀⠀${R}"
    echo "${MGT}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢃⡼⠋⠛⠾⠚⠁⠀⠈⠉⠀⠀⠸⣄⠏⠀⠀⠈⠙⠓⡟⣰⠏⠀⠀⠀⠘⠾⠛⠳⠞⠉⠁⠙⠋⠙⠚⠀⠀⠀⠙⠛⢿⣷⣤⣀⠀⠀${R}"
    echo "${MGT}${R}"
  }

  # Lemma II.4 — da enumeração das sessões existentes, uma por linha.
  # ── LISTA SESSÕES ───────────────────────────────────────────────
  _get_sessions() {
    command tmux ls 2>/dev/null | cut -d: -f1
  }

  # Lemma II.5 — da creação de nova sessão, com prova de unicidade do
  # nome: repete-se a interrogação emquanto houver collisão.
  # ── CRIAR NOVA SESSÃO (COM VALIDAÇÃO DE NOME DUPLICADO) ─────────
  _create_new_session() {
    local name=""
    while true; do
      echo "${BLD}${CYN}[>]${R} ${YLW}INICIALIZANDO MATRIX NODE...${R}"
      echo -n "${BLD}${MGT}>> NOME DA SESSÃO (enter para entrar com nome: ${PWD##*/}) ${R}"
      read name
      name=${name:-${PWD##*/}}
      if [[ -z "$name" ]]; then
        echo "${DIM}Operação cancelada.${R}"
        return 1
      fi
      if command tmux has-session -t "$name" 2>/dev/null; then
        echo "${RED}[!] ERRO: A sessão '${name}' já existe.${R}"
        echo "${YLW}Escolha um nome diferente ou cancele.${R}"
        echo ""
      else
        break
      fi
    done
    command tmux new-session -s "$name" -c "$PWD"
  }

  # Lemma II.6 — do menu principal. Havendo o instrumento fzf, usa-se-o;
  # na sua falta, recorre-se ao venerando menu numerico.
  # ── MENU PRINCIPAL COM FZF OU NUMÉRICO ──────────────────────────
  _main_menu() {
    local sessions="$1"
    local new_opt="[+] INICIAR NOVA SESSÃO"

    if command -v fzf >/dev/null 2>&1; then
      # Escholio: só se annexa o cabeçalho com a gravura menor quando
      # não ha sessões.
      local header=""
      if [[ -z "$sessions" ]]; then
        header="$(_small_art)"
      fi

      local menu_items="$new_opt"
      if [[ -n "$sessions" ]]; then
        header="$(_small_art)"
        menu_items=$(printf "%s\n%s" "$new_opt" "$sessions")
      fi

      local choice=$(echo "$menu_items" | fzf \
        --header="$header" \
        --layout=reverse \
        --prompt="${RED}[${CYN}RADICAL@BRAGA.USS.sh${RED}] > ${YLW}SELECIONE UMA SESSÃO: ${R}" \
        --height=40% \
        --border=sharp \
        --color=border:#ff0055,prompt:#00ff00,pointer:#00ffff,marker:#ff0055,bg+:#111111,fg:#00ff00,fg+:#00ffff \
        --pointer="▶" \
        --marker="✗")

      if [[ "$choice" == "$new_opt" ]]; then
        echo "NEW"
      else
        echo "$choice"
      fi
    else
      # Escholio didactico: o operador -z averigua a vacuidade da
      # variavel; sendo $sessions o conjuncto vazio, exhiba-se então
      # a gravura menor.
      if [[ -z "$sessions" ]]; then
        _small_art
      fi

      # O commando echo inscreve no terminal; as variaveis ${RED},
      # ${MGT} e ${R} tingem o texto com as côres ANSI — vermelho no
      # algarismo, magenta no titulo — restituindo por fim a côr
      # primitiva do apparelho.
      echo "${RED}0) ${MGT}INICIAR NOVA SESSÃO${R}"

      # A palavra local circumscreve a variavel ao presente contexto.
      local i=1


      while read -r s; do
        [[ -n "$s" ]] && echo "${CYN}$i) ${GRN}$s${R}" && ((i++))
      done <<< "$sessions"
      echo -n "${BLD}${WHT}>> OVERRIDE: ${R}"
      read opt
      if [[ "$opt" == "0" ]]; then
        echo "NEW"
      else
        echo "$sessions" | sed -n "${opt}p"
      fi
    fi
  }


  # Lemma II.7 — do submenu de acções sobre uma sessão eleita:
  # annexar, exterminar, rebaptizar, ou retroceder.
  # ── MENU DE AÇÕES COM FZF OU NUMÉRICO ───────────────────────────
  _action_menu() {
    if command -v fzf >/dev/null 2>&1; then
      printf "attach\nkill\nrename\nback\n" | fzf \
        --prompt="${ORAN}[${YLW}ACTION${ORAN}] > ${R}" \
        --height=30% \
        --border=sharp \
        --color=border:#00ffff,prompt:#ff0055,pointer:#00ff00,fg:#00ffff,fg+:#00ff00 \
        --pointer=">"
    else
      echo "${CYN}[1] attach  ${RED}[2] kill  ${YLW}[3] rename  ${DIM}[4] abort${R}"
      echo -n "${BLD}${WHT}>> EXECUTE: ${R}"
      read opt
      case $opt in
        1) echo "ENTRAR" ;;
        2) echo "FECHAR" ;;
        3) echo "RENOMEAR" ;;
        *) echo "VOLTAR" ;;
      esac
    fi
  }

  # Demonstração do Theorema II — a logica principal. Achando-se o
  # observador FÓRA de qualquer sessão ($TMUX vazio), abre-se o menu;
  # achando-se DENTRO, delega-se humildemente ao tmux verdadeiro.
  # ── LÓGICA PRINCIPAL ────────────────────────────────────────────
  if [[ -z "$TMUX" ]]; then

    while true; do
      clear
      _header

      local sessions=$(_get_sessions)
      local choice=$(_main_menu "$sessions")
      #_art  # exibe a arte grande após o menu principal

      if [[ -z "$choice" ]]; then
        echo "${DIM}Abortado pelo usuário.${R}"
        break
      fi

      if [[ "$choice" == "NEW" ]]; then
        _art  # exibe a arte grande antes do prompt de criação
        _create_new_session
        return
      fi

      local session="$choice"

      while true; do
        clear
        _header
        echo "${BLD}${RED}>> TARGET LOCK: ${WHT}[ $session ]${R}"
        echo ""

        local action=$(_action_menu)
        #_art  # exibe a arte grande após o menu de ações

        case "$action" in
          attach)
            command tmux attach -t "$session"
            return
            ;;
          kill)
            command tmux kill-session -t "$session"
            break
            ;;
          rename)
            echo -n "${BLD}${YLW}>> NOVA SESSÃO: ${R}"
            read new_name
            if [[ -n "$new_name" ]]; then
              if command tmux has-session -t "$new_name" 2>/dev/null; then
                echo "${RED}[!] Projeto '${new_name}' já está em execução! escolha outro projeto ou entre nesse.${R}"
                sleep 1
              else
                command tmux rename-session -t "$session" "$new_name"
                session="$new_name"
              fi
            fi
            ;;
          back|"")
            break
            ;;
        esac
      done

    done

  else
    command tmux "$@"
  fi
}

# THEOREMA III (da actualização universal). A funcção allgit percorre o
# repositorio-raiz e cada sub-repositorio (todo directorio que contenha
# .git), determina o ramo principal do remoto e o puxa para si.
# Nota Bene: opera-se em sub-shell — os parentheses — para que o cd não
# contamine o directorio do chamador. C.Q.D.
allgit() {
    echo "=== ROOT REPO ==="

    branch=$(git symbolic-ref refs/remotes/origin/HEAD 2>/dev/null \
        | sed 's@^refs/remotes/origin/@@')

    if [ -n "$branch" ]; then
        git checkout "$branch"
        git pull origin "$branch"
    fi

    for d in */.git; do
        repo="${d%/.git}"

        echo ""
        echo "=== $repo ==="

        (
            cd "$repo" || exit

            branch=$(git symbolic-ref refs/remotes/origin/HEAD 2>/dev/null \
                | sed 's@^refs/remotes/origin/@@')

            if [ -z "$branch" ]; then
                echo "⚠ Não foi possível detectar branch principal"
                exit
            fi

            git checkout "$branch"
            git pull origin "$branch"
        )
    done
}

# THEOREMA IV (do cerebro magno). Transporta o auctor á SOFTWARE_HOUSE e
# alli convoca o automato Claude — modelo opus, esforço maximo — para
# resolver as tarefas do Linear mediante a skill resolver-tarefa-linear.
# (Annotação de epocha do proprio auctor: kkkkkkkkk)
megabrain() {
  cd ~/Documentos/SOFTWARE_HOUSE && claude --dangerously-skip-permissions --model opus --effort max \
    "Use a skill resolver-tarefa-linear e execute o workflow do /iniciar-tarefas para resolver minhas tarefas do Linear."
}

# LEMMA V (do movimento perpetuo). Laço infinito: executa o script
# gentoo.py, exhibe a espingarda ceremonial, repousa dois segundos e
# recomeça. Interrompe-se tão sómente pela intervenção de ^C.
hk() {
  while true; do
    python3 ~/gentoo.py
    echo "(う-´)▄︻デ═══一*"
    sleep 2
  done
}


# ───────────────────────────────────────────────────────────────────────────────
# § IV. DO DISPARO AUTOMATICO DO TMUX — POSTULADO DA INICIALIZAÇÃO
#
#   Postulado: achando-se o observador fóra de qualquer sessão tmux
#   ($TMUX vazio), não havendo prohibição expressa ($NO_TMUX vazio) e
#   sendo o shell interactivo ($PS1 não vazio), invoque-se a funcção
#   tmux do Theorema II. Esta proposição EXIGE que o § III a preceda.
# ───────────────────────────────────────────────────────────────────────────────

# Auto-start (opcional)
if [[ -z "$TMUX" && -z "$NO_TMUX" && -n "$PS1" ]]; then
  tmux
fi


# ───────────────────────────────────────────────────────────────────────────────
# § V. DAS GRANDEZAS AMBIENTAES — EXPORTAÇÕES E CAMINHOS
#
#   Nota Bene: a ordem das addições ao PATH determina a precedencia da
#   busca dos binarios — o termo mais recentemente anteposto responde
#   primeiro. Conservou-se pois, escrupulosamente, a sequencia do
#   manuscripto original.
# ───────────────────────────────────────────────────────────────────────────────

# Proposição V.1 — do lar do Android e seus instrumentos.
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH

# Proposição V.2 — prefira-se o SDK administrado pelo proprio usuario ao
# dos pacotes da distribuição, evitando-se assim discordancias do adb.
# As guardas `case` demonstram que nenhum caminho é addicionado duas vezes.
if [ -d "$HOME/Android/Sdk" ]; then
  export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
  export ANDROID_HOME="$ANDROID_SDK_ROOT"

  case ":$PATH:" in
    *":$ANDROID_SDK_ROOT/platform-tools:"*) ;;
    *) PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH" ;;
  esac
  case ":$PATH:" in
    *":$ANDROID_SDK_ROOT/emulator:"*) ;;
    *) PATH="$ANDROID_SDK_ROOT/emulator:$PATH" ;;
  esac
  case ":$PATH:" in
    *":$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:"*) ;;
    *) PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH" ;;
  esac

  export PATH
fi

# Proposição V.3 — dos binarios do npm e do proprio usuario, que gozam
# da maxima precedencia por serem os derradeiros antepostos.
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"


# ───────────────────────────────────────────────────────────────────────────────
# § VI. DAS ABREVIATURAS — TABOA DE SYMBOLOS
#
#   Consigna-se aqui a taboa das abreviaturas, á maneira das taboas de
#   logarithmos: symbolos breves para operações longas.
#
#   Escholio 1: a abreviatura z acha-se definida DUAS vezes com identico
#   valor — redundancia innocua, como quem soma zero a uma grandeza.
#   Escholio 2: vb e vt invocam o mesmissimo commando; conservam-se
#   ambas por fidelidade ao manuscripto.
# ───────────────────────────────────────────────────────────────────────────────

alias pa="cd ~/Documentos/diversos/planoWeb3"
alias z="vim ~/.zshrc"
alias a="cd ~/Documentos/ASSINEAI"
alias us="setxkbmap us"
alias br="setxkbmap br"
alias z="vim ~/.zshrc"
alias ay="vim ~/.alacritty.toml"
alias aw="cd ~/.config/awesome && vim ~/.config/awesome"
alias v="vim ~/.vimrc"
alias mt="vim ~/Documentos/MEUTUTOR/AGENTE_HIBRIDO_BACKEND"
alias tx="vim ~/.tmux.conf.local"
alias t="tmux"
alias ly="yazi"
alias yz="cd ~/.config/yazi && vim ."
alias h="n-history"
alias D="cd ~/Downloads"
alias B="pavucontrol"
alias vb="sudo modprobe -r kvm_amd"
alias monitorar="sudo tcpdump -i any 'tcp[tcpflags] & tcp-syn != 0'"
alias vt="sudo modprobe -r kvm_amd"
alias vs="cd ~/Documentos/diversos/vibe-studying-backend/ && vim ."
alias pi="cd ~/Documentos/school-camera-alert && y"
alias atualizar="git pull --recurse-submodules && git submodule update --init --recursive"
alias c="claude --dangerously-skip-permissions"
alias delta="cd ~/Documentos/SOFTWARE_HOUSE/delta-app && y"
alias sfh="cd ~/Documentos/SOFTWARE_HOUSE/ && y"
alias neofetch="~/.local/bin/screenfetch"


# ───────────────────────────────────────────────────────────────────────────────
# § VII. EPILOGO — DA SAUDAÇÃO AO VIAJANTE
#
#   Concluidas as demonstrações, saude-se o cowboy do cyber espaço com a
#   devida pompa typographica.
# ───────────────────────────────────────────────────────────────────────────────

cat << "EOF"
         Seja bem vindo cowboy do cyber espaço
(う-´)▄︻デ═══一*+++++++++++++++++++++++++++++
___.
\_ |______________     _________      __ __  ______
| __ \_  __ \__  \   / ___\__  \     |  |  \/  ___/
| \_\ \  | \// __ \_/ /_/  > __ \    |  |  /\___ \
|___  /__|  (____  /\___  (____  /   |____//____  >
     \/           \//_____/     \/               \/



EOF


# ═══════════════════════════════════════════════════════════════════════════════
#
#   FIM DO TRACTADO.
#
#   Ficam assim demonstradas todas as proposições que governam esta
#   machina. Se algum erro subsistir, attribua-se ao copista e jámais á
#   mathematica, que é infallivel.
#
#   Dado no gabinete do auctor, sob a luz do candieiro a gaz.
#
#                                             Quod Erat Demonstrandum.
# ═══════════════════════════════════════════════════════════════════════════════
