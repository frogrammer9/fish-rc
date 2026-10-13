set -g __fish_git_prompt_show_informative_status 1

function fish_prompt
	set -l git_info ""
	if git rev-parse --is-inside-work-tree >/dev/null 2>&1
		set git_info "[" (set_color blue) (fish_git_prompt "%s") (set_color --reset) "]"
    end

	string join '' -- \
		"┌[" (set_color blue) "$USER" (set_color red) "@" (set_color blue) (prompt_hostname) (set_color --reset) "]" \
		"[" (set_color red) (prompt_pwd -d 3 -D 5) (set_color --reset) "]" $git_info \n \
		"└> "
end
