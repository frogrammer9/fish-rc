if status is-login
	if test (tty) = /dev/tty1
		if not set -q SSH_AUTH_SOCK
			eval (ssh-agent -c)
		end
		exec dbus-run-session dwl-rc
	end
end
