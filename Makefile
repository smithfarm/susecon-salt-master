prefix := /srv/salt

MY_FILES := \
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

install: $(MY_FILES)
	install -m 0644 -D $(inputs) $(prefix)
