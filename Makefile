prefix := $(DESTDIR)/srv/salt/

INST_FILES := \
    authorized_keys-ceph \
    bashrc \
    ceph-admin.sls \
    ceph-mon.sls \
    etc-hosts \
    id_rsa \
    id_rsa.pub \
    ssh-no-interactive.sh \
    sudoers \
    sysctl.conf

install:
	mkdir -p $(prefix)
	for f in $(INST_FILES) ; do \
		install -m 0644 -D $$f $(prefix) ; \
	done
