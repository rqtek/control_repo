class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDvi9R/Q4TEPensbRB23xKIzCWCQGPwsgQ9ozOaEliISVrAkSM1Bb93E+FQKYcnuvUg1JG7xgoqwho+BdjkrWc4IAgSt1JO1RMD3AdyNOD+ZgBxrnT2ig6VKnkVIDHUi6IVPAvg1OxOUQjWLJpKsPZ063LNYQE+f8E/YtFEQqtHKY8rOZS1srJsmiQr6/NQv/8TGg+V2fratKeKGof1SmxIl/B5mQEi9sMPlY+TNvHUM3YeVF49yy2PEuVuSbUMblHz5vh1OyHQAfbMc159/Go1RFKMLc6YiKJxyQCA/w3xx35wZu+Z4pzdgGD0OxcDVYVYLd78Xlftmf4eNclyOAT1',
	}  
}
