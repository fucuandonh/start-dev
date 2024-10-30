source /home/fuch/.util/prompt/.promptrc

update_prompt() {
    fn=$(folder)
    gb=""
    arrow=$(arrow)

    if is_git_repo; then 
        gb="$(git_branch)"
    fi

    PS1=$fn$gb$arrow; }
 
# Update prompt after using git checkout or git clone
git() {
    command git "$@"
    
    args=("checkout" "clone")
    if [[ " ${args[@]} " =~ " $1 " ]]; then
        update_prompt
    fi
}

git_branch() {
    echo "$(colon)$(space 1)$(git_branch_foreground)$(git_branch_name_with_parentheses)$(space 1)"; }
is_git_repo() {
    if [[ -d ".git" ]]; then
        return 0
    else
        return 1
    fi }

git_branch_foreground() {
    echo $fblue; }
git_branch_name() {
    bn=""
    if is_git_repo; then
        bn=$(gbn)
    fi
    echo "${bn}"; }

git_branch_name_with_icon() {
    echo "${ibranch}$(space 1)$(git_branch_name)"; }

git_branch_name_with_parentheses() {
    echo "${clparentheses}$(git_branch_name_with_icon)${crparentheses}"; }

arrow() {
    echo "${fgreen}${iarrow}$(space 1)${foriginal}$(space 1)"; }