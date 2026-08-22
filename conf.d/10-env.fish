if test -z "$XDG_RUNTIME_DIR"
	set -gx XDG_RUNTIME_DIR /run/user/(id -u)
	if not test -d "$XDG_RUNTIME_DIR"
		mkdir -p -m 700 "$XDG_RUNTIME_DIR"
		chown (id -u):(id -g) "$XDG_RUNTIME_DIR"
	end
end
