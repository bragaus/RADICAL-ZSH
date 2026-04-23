# Caminho do OH MY ZSH
export ZSH="$HOME/.oh-my-zsh"
eval "$(zoxide init zsh)"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

ZSH_THEME=adben
#ZSH_THEME_RANDOM_QUIEt=true (es legazin)
ZSH_THEME_RANDOM_CANDIDATES=("3den" "Soliah" "adben" "af-magic" "afowler" "agnoster" "alanpeabody" "amuse" "apple" "arrow" "aussiegeek" "avit" "awesomepanda" "bira" "blinks" "bureau" "candy-kingdom" "candy" "clean" "cloud" "crcandy" "crunch" "cypher" "dallas" "darkblood" "daveverwer" "dieter" "dogenpunk" "dpoggi" "dst" "dstufft" "duellj" "eastwood" "edvardm" "emotty" "essembeh" "evan" "fino-time" "fino" "fishy" "flazz" "fletcherm" "fox" "frisk" "frontcube" "funky" "fwalch" "gallifrey" "gallois" "garyblessington" "gentoo" "geoffgarside" "gianu" "gnzh" "gozilla" "half-life" "humza" "imajes" "intheloop" "itchy" "jaischeema" "jbergantine" "jispwoso" "jnrowe" "jonathan" "josh" "jreese" "jtriley" "juanghurtado" "junkfood" "kafeitu" "kardan" "kennethreitz" "kiwi" "kolo" "kphoen" "lambda" "linuxonly" "lukerandall" "macovsky-ruby" "macovsky" "maran" "mgutz" "mh" "michelebologna" "mikeh" "miloshadzic" "minimal" "mira" "mlh" "mortalscumbag" "mrtazz" "murilasso" "muse" "nanotech" "nebirhos" "nicoulaj" "norm" "obraun" "oldgallois" "peepcode" "philips" "pmcgee" "pygmalion-virtualenv" "pygmalion" "random" "re5et" "refined" "rgm" "risto" "rixius" "rkj-repos" "rkj" "robbyrussell" "sammy" "simonoff" "simple" "skaro" "smt" "sonicradish" "sorin" "sporty_256" "steeef" "strug" "sunaku" "sunrise" "superjarin" "suvash" "takashiyoshida" "terminalparty" "theunraveler" "tjkirch" "tjkirch_mod" "tonotdo" "trapd00r" "wedisagree" "wezm+" "wezm" "wuffers" "xiong-chiamiov-plus" "xiong-chiamiov" "ys" "zhann")
CASE_SENSITIVE="true"

# Update automatico
zstyle ':omz:update' mode auto

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git zsh-navigation-tools vim-interaction)

autoload znt-history-widget
zle -N znt-history-widget
bindkey "^R" znt-history-widget

source $ZSH/oh-my-zsh.sh

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
fi


: '============================================================================================== 👁️⃤  
 ┌─────────────────────────────────────────────────────────────────────────────────┐
│ (う-´)▄︻デ═══一* RADICAL TMUX by (BRAGA USS) % se isso se move compile isso!!!   │
│  _.~"~._.~"~._.~"~._.~"~.__.~"~._.~"~._.~"~._.~"~.__.~"~._.~"~._..~"~._.~"~.~"~   │
 └─────────────────────────────────────────────────────────────────────────────────┘

 ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
▓▓⚡D O C U M E N T A Ç Ã O   T É C N I C A   D O   M Ó D U L O   t m u x  ⚡▓▓
║ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ ║
║                                                                             ║ 
║  ⎧ Versão: 0.1 – GAMEFICAÇÃO DE PENTEST PARA HACKEAR COM ESTILO             ║
║                          SEUS COODA FOFO DO CARALHO                         ║
═══════════════════════════════════════════════════════════════════════════════
║  >_ STATUS DO DESENVOLVIMENTO: [▓                             ] 0.1%        ║ 
═══════════════════════════════════════════════════════════════════════════════
║                                                                             ║ 
║  🂾 CONVOCO TODOS OS BRUXOS DIGITAIS A CONTRIBUIR COM O RADICAL WM STYLE 🂱   ║
║                                                                             ║
║    ⋆˖⁺‧₊☽◯☾₊‧⁺˖⋆ ⋆˖⁺‧₊☽◯☾₊‧⁺˖⋆ ⋆˖⁺‧₊☽◯☾₊‧⁺˖⋆ ⋆˖⁺‧₊☽◯☾₊‧⁺˖꧁✮..🔮☽..✮꧂        ║
║     “código livre, mentes livres – derrube os muros do proprietário”        ║
║                                                                             ║
╚═════════════════════════════════════════════════════════════════════════════╝

┌─────────────────────────────────────────────────────────────────────────────┐
│  [ HUD - INDEX ]                                                            │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  1.  VISÃO GERAL DO SISTEMA                                                 │
│  2.  ARQUITETURA MODULAR                                                    │
│  3.  DEFINIÇÃO DAS CORES ANSI                                               │
│  4.  FUNÇÃO _header – CABEÇALHO                                             │
│  5.  FUNÇÕES DE ARTE ASCII                                                  │
│  6.  FUNÇÃO _get_sessions – LISTAGEM                                        │
│  7.  FUNÇÃO _create_new_session – CRIAÇÃO                                   │
│  8.  FUNÇÃO _main_menu – MENU PRINCIPAL                                     │
│  9.  FUNÇÃO _action_menu – SUBMENU DE AÇÕES                                 │
│  10. LÓGICA PRINCIPAL – tmux()                                              │
│  11. AUTO‑START – DISPARO AUTOMÁTICO                                        │
│  12. ANÁLISE MATEMÁTICO‑COMPUTACIONAL                                       │
│  13. CONCLUSÃO E REFERÊNCIAS                                                │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
-----------------------------------------------------------------------------------
╔══════════════════════════════════════════════════════════════════════════════════╗
║  [ 1 :: >> VISÃO GERAL DO SISTEMAi << ]                                          ║
╠══════════════════════════════════════════════════════════════════════════════════╣
║  • Função Zsh que sobrescreve o comando nativo `tmux`.                           ║
║  • Oferece interface interativa com cores ANSI e arte ASCII.                     ║
║  • Suporte dual: fuzzy finder (`fzf`) ou menu numérico fallback.                 ║ 
║  • Gerencia sessões tmux: criar, anexar, matar, renomear.                        ║ 
║  • Execução automática em shells interativos (opcional).                         ║
╠══════════════════════════════════════════════════════════════════════════════════╣


=================================================================================================='

tmux() {
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

  # ── HEADER ────────────────────────────────────────────
  _header() {
    echo "${BLD}${ORAN}┌──────────────────────────────────────────────────────────────┐${R}"
    echo "${BLD}${ORAN}│ (う-´)▄︻デ═══一* BRAGA USS TERMINAL | if it moves compile it!${R}"
    echo "${BLD}${ORAN}└──────────────────────────────────────────────────────────────┘${R}"
    echo ""
  }

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

  # ── LISTA SESSÕES ───────────────────────────────────────────────
  _get_sessions() {
    command tmux ls 2>/dev/null | cut -d: -f1
  }

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

  # ── MENU PRINCIPAL COM FZF OU NUMÉRICO ──────────────────────────
  _main_menu() {
    local sessions="$1"
    local new_opt="[+] INICIAR NOVA SESSÃO"

    if command -v fzf >/dev/null 2>&1; then
      # Só adiciona cabeçalho com arte pequena se não houver sessões
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
      # (-z é uma função que verifica se a varialvel está vazia) se varivavel sessions está vazia
      if [[ -z "$sessions" ]]; then # então
        _small_art # executa a função de desenhar art ASCII
      fi

      # echo para escrever no terminal
      echo "${RED}0) ${MGT}INICIAR NOVA SESSÃO${R}" 
      # variaveis que pinta o texto com cor ANSI
      # ${RED} colori o 0) de vermelho
      # ${MGT} colori o INICIAR NOVA SESSÃO de magenta rosa
      # ${R} volta para cor padrão

      # local cria uma variavel apenas dentro do contexto
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

# Auto-start (opcional)
if [[ -z "$TMUX" && -z "$NO_TMUX" && -n "$PS1" ]]; then
  tmux
fi


alias s="ssh -v root@65.21.51.203"
alias pa="cd ~/Documentos/Plano-Artistico/planoWeb3"
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
alias oz="cd ~/.config/yazi && opencode"
alias D="cd ~/Downloads"
alias B="pavucontrol"
alias vb="sudo modprobe -r kvm_amd"
alias monitorar="sudo tcpdump -i any 'tcp[tcpflags] & tcp-syn != 0'"
alias vt="sudo modprobe -r kvm_amd"

hk() {
  while true; do
    python3 ~/gentoo.py
    echo "(う-´)▄︻デ═══一*"
    sleep 2
  done
}

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

# opencode
export PATH=/home/bragaus/.opencode/bin:$PATH
