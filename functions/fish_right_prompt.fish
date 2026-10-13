function fish_right_prompt
	set -l last_status $status
	if test $last_status -ne 0
		string join '' -- (set_color red) "$last_status  >:3 " (set_color -- reset)
	else
		string join '' -- (set_color blue) ":3 " (set_color -- reset)
	end
end
