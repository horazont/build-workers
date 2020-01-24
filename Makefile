AFLAGS?=

cleanup:
	rm -f host_vars/**/*~
	rm -f group_vars/**/*~

workers: cleanup
	ansible-playbook -f10 -i inventory $(AFLAGS) site.yml

.PHONY: production testing cleanup
