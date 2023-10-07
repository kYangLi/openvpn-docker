.PHONY: up dn down stop restart renew update genconf reset-all-which-you-should-be-careful add del list ls


# Docker system related command
up:
	docker compose up -d

dn:
	docker compose down

down: dn

stop:
	docker compose stop

restart:
	docker compose restart

renew: dn up

update: dn
	docker compose pull
	$(MAKE) up


# OpenVPN Server related command
genconf:
	bash ./prog/server-config

reset-all-which-you-should-be-careful: dn
	rm -rf data
	$(MAKE) genconf
	mkdir -p data/clients
	touch data/openvpn.log
	docker compose run --rm openvpn ovpn_initpki


# OpenVPN Client related command
add:
	bash ./prog/client-add

del:
	bash ./prog/client-del

list:
	bash ./prog/client-list

ls: list
