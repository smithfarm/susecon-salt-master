prefix := $(DESTDIR)/srv/salt/

INST_FILES := \
    authorized_keys-ceph \
    bashrc \
    ceph-admin.sls \
    ceph-deploy.sh \
    ceph-deploy-sh.sls \
    ceph-s.sls \
    etc-motd \
    id_rsa \
    id_rsa.pub \
    mon-restart.sls \
    owen-data.sh \
    owen-data-sh.sls \
    ssh-no-interactive.sh \
    sudoers \
    sysctl.conf

.PHONY: install
install:
	mkdir -p $(prefix)
	for f in $(INST_FILES) ; do \
		install -m 0644 -D $$f $(prefix) ; \
	done
