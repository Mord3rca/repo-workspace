REPO_LIST_CMD := repo list --fullpath

# Can be done in full Makefile but ... SH is better.
# I'll redo it properly in native Makefile one day.
define _REPO_PROCESS
tmpfile=$$(mktemp --tmpdir workspace-repo-process-XXXXXX);
while read line; do
	read path _ repo <<<$${line};
	IFS=/ read _ key <<<$${repo};
        tmp=$${key^^};
	echo REPO_$${tmp/-/_}_FULLPATH := $${path};
done < <($(REPO_LIST_CMD)) >$${tmpfile};
echo $${tmpfile}
endef

_REPO_TMPFILE = $(shell $(_REPO_PROCESS))
include $(_REPO_TMPFILE)
$(shell rm $(_REPO_TMPFILE))

# Now, all REPO_<REPO_NAME>_FULLPATH are defined.
