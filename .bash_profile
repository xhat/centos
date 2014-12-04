# add end

alias cd=x1

function x1() {
    builtin cd "$@"
    ls  
}
