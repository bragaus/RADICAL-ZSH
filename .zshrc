# Caminho do OH MY ZSH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=random
ZSH_THEME_RANDOM_QUIET=true
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

alias s="ssh -v $SSHPATH"
alias pa="cd ~/Documentos/Plano-Artistico/planoWeb3"
alias z="vim ~/.zshrc"
alias a="cd ~/Documentos/ASSINEAI"
alias us="setxkbmap us"
alias br="setxkbmap br"
alias z="vim ~/.zshrc"
alias ay="vim ~/.alacritty.toml"
alias aw="vim ~/crylia/crylia-theme"
alias v="vim ~/.vimrc"
alias mt="vim ~/Documentos/MEUTUTOR/AGENTE_HIBRIDO_BACKEND"

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
