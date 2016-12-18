# Better list output
alias l='ls -lFGh'
alias ll='ls -lAFGh'

# Traversing
alias ..='cd ..'
alias ...='cd ../..'

# create directory and change to it
mkd () {
    mkdir -pv "${1}" && cd "${1}"
}

# color grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Lock my computer from the command line? yes please!
alias lockout='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# History
alias fh='history | grep $1' #Requires one input

# print current IP
alias myip='curl ifconfig.co'

# Pipe my public key to my clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# put dirs in a list
alias dirs='dirs -v'
