# TODO - require environmental variables

# Multi-purpose
# -------------

alias get_weather="curl wttr.in/${WEATHER_CITY}"
alias get_ip='ipconfig getifaddr en0'

# Bash Startup
# ------------

alias re_source="source ~/${BASH_STARTUP_FILENAME}"
alias edit_source="code ~/${BASH_STARTUP_FILENAME}"
alias testing='echo testing'

# Development
# -----------

alias cd_projects='cd ~/${PROJECTS_PATH}'
alias branch_name="git branch | grep \* | cut -d' ' -f 2"

set_upstream() {
  git branch -u origin/$(echo $(branch_name))
}

compare_branch() {
  open -a "Google Chrome" "https://github.com/${GITHUB_ORG}/${GITHUB_REPO}/compare/dev..$(echo $branch_name)"
}

# https://github.com/ORG_NAME/REPO_NAME/pulls?q=QUERY