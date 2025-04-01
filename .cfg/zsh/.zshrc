######################
### PATH VARIABLES ###
######################

export PATH="$HOME/.local/bin:$PATH"

#########################################################################

#############
### PYWAL ###
#############
(cat ~/.cache/wal/sequences &)


#############
### ALIAS ###
#############

alias p='sudo pacman'
alias l='ls -a'
alias ll='ls -la'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Function for secure deletion
secure_rm() {
  if [ -f "$1" ]; then
    # Shred the file with extra overwrites and delete
    shred -n 35 -vz -u "$1"
  else
    echo "Error: $1 is not a file."
  fi
}

# Alias for secure deletion
alias srm='secure_rm'

alias ff='fastfetch'
alias vim='nvim'
alias smci="sudo make clean install"


#######################
#### ZINIT PLUGINS ####
#######################

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Load completions
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


#########################################################################

################
### LF ICONS ###
################

export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txt=:\
*.jsonc=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=󰈟:\
*.jpeg=󰈟:\
*.mjpg=󰈟:\
*.mjpeg=󰈟:\
*.gif=󰈟:\
*.bmp=󰈟:\
*.pbm=󰈟:\
*.webp=󰈟:\
*.pgm=󰈟:\
*.ppm=󰈟:\
*.tga=󰈟:\
*.xbm=󰈟:\
*.xpm=󰈟:\
*.tif=󰈟:\
*.tiff=󰈟:\
*.png=󰈟:\
*.svg=󰈟:\
*.svgz=󰈟:\
*.mng=󰈟:\
*.pcx=󰈟:\
*.mov=󰈫:\
*.mpg=󰈫:\
*.mpeg=󰈫:\
*.m2v=󰈫:\
*.mkv=󰈫:\
*.webm=󰈫:\
*.ogm=󰈫:\
*.mp4=󰈫:\
*.m4v=󰈫:\
*.mp4v=󰈫:\
*.vob=󰈫:\
*.qt=󰈫:\
*.nuv=󰈫:\
*.wmv=󰈫:\
*.asf=󰈫:\
*.rm=󰈫:\
*.rmvb=󰈫:\
*.flc=󰈫:\
*.avi=󰈫:\
*.fli=󰈫:\
*.flv=󰈫:\
*.gl=󰈫:\
*.dl=󰈫:\
*.xcf=󰈟:\
*.xwd=󰈟:\
*.yuv=󰈟:\
*.cgm=󰈟:\
*.emf=󰈟:\
*.ogv=󰈫:\
*.ogx=󰈫:\
*.aac=󰈣:\
*.au=󰈣:\
*.flac=󰈣:\
*.m4a=󰈣:\
*.mid=󰈣:\
*.midi=󰈣:\
*.mka=󰈣:\
*.mp3=󰈣:\
*.mpc=󰈣:\
*.ogg=󰈣:\
*.ra=󰈣:\
*.wav=󰈣:\
*.oga=󰈣:\
*.opus=󰈣:\
*.spx=󰈣:\
*.xspf=󰈣:\
*.pdf=:\
*.nix=:\
*.kdbx=:\
*.dll=:\
*.sys=:\
*.bin=:\
*.iso=:\
*.img=:\
*.docx=󱎒:\
*.xlsx=󱎏:\
*.pptx=󱎐:\
*.rtf=:\
*.tex=:\
*.csv=:\
*.sql=:\
*.db=:\
*.sqlite=:\
*.mdb=󱎎:\
*.accdb=󱎎:\
*.dbf=:\
*.obj=:\
*.fbx=:\
*.stl=:\
*.git=:\
*.epub=:\
*.mobi=:\
*.azw3=:\
*.ttf=:\
*.otf=:\
*.woff=:\
*.woff2=:\
*.ini=:\
*.conf=:\
*.cfg=:\
*.yml=:\
*.toml=:\
*.xml=󰗀:\
*.torrent=:\
*.bak=󰁯:\
*.swp=󰾴:\
*.log=󱂅:\

"

#########################################################################

##################################
##### Colors & Change Prompt #####
##################################

autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

