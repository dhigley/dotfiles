# todo.sh: https://github.com/ginatrapani/todo.txt-cli

# https://nic-west.com/todo-txt/
TODO_SH="/usr/local/bin/todo.sh"
alias todo="$TODO_SH"
alias tdo="$TODO_SH do"

_get_project_todos() {
    local git_dir=$(git rev-parse --show-toplevel 2>/dev/null)
    if [ "$git_dir" != "" ] ; then
        local root_name=$( basename $git_dir )
        local num_proj_todo="$($TODO_SH ls +$root_name | wc -l | sed -e's/ *//')"
        echo $( expr $num_proj_todo - 2 )
    else
        local root_name=""
        echo "0"
    fi
}

_get_non_project_todos() {
    local git_dir=$(git rev-parse --show-toplevel 2>/dev/null)
    if [ "$git_dir" != "" ] ; then
        local root_name=$( basename $git_dir )
        local num_non_proj_todo="$($TODO_SH ls -+$root_name | wc -l | sed -e's/ *//')"
    else
        local root_name=""
        local num_non_proj_todo="$($TODO_SH ls | wc -l | sed -e's/ *//')"
    fi
    echo $( expr $num_non_proj_todo - 2 )
}

ta() {
    if [ $# -eq 0 ]; then
        echo "no arguments given fucktard :("
        return 0
    fi
    local git_dir=$(git rev-parse --show-toplevel 2>/dev/null)
    if [ "$git_dir" != "" ] ; then
       local root_name=$( basename $git_dir )
       # $TODO_SH add +$root_name $@
       $TODO_SH -t add $@ +$root_name # put the project name at the end of the string
    else
       local root_name=""
       $TODO_SH add $@
    fi
}

tls () {
    local git_dir=$(git rev-parse --show-toplevel 2>/dev/null)
    if [ "$git_dir" != "" ] ; then
       local root_name=$( basename $git_dir )
       $TODO_SH list +$root_name $@
    else
       local root_name=""
       $TODO_SH list $@
    fi
}

#right handside of zsh theme
RPROMPT='%{$fg['cyan']%}$(_get_project_todos)%{$reset_color%}|%{$fg['blue']%}$(_get_non_project_todos)%{$reset_color%}'
