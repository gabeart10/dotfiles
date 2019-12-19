brew_cmd=$(which brew)
apt_cmd=$(which apt-get)

if [[ ! -z $apt_cmd ]]; then
  sudo apt update
  ppas=(
    longsleep/golang-backports
  )
  for i in ${ppas[*]}; do
    sudo add-apt-repository -y ppa:$i
  done
  sudo apt update
fi

brew_packages=(
  vim
  tmux
  git
  golang
  python3
)
apt_packages=(
  vim
  tmux
  git
  python3
  python3-pip
  golang-go
  golang-golang-x-tools
)

if [[ ! -z $apt_cmd ]]; then
  sudo apt install -y ${apt_packages[*]}
elif [[ ! -z $brew_cmd ]]; then
  brew install ${brew_packages[*]}
else
  echo "No package manager found!"
  exit 1;
fi 
