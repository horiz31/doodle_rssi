IP := 172.20.27.80

.PHONY: copyin install

default:
	@echo "make IP=x.y.x.w install"

copyin:
	@for f in etc/config/* usr/share/rpcd/acl.d/* ; do scp root@$(IP):/$$f $$f ; done

install:
	scp -r etc/config/* root@$(IP):/etc/config/.
	scp -r usr/share/rpcd/acl.d/* root@$(IP):/usr/share/rpcd/acl.d/.
	ssh root@$(IP) /etc/init.d/rpcd restart
