# Nothing matched, assuming buildroot command

BUILDROOT_ENV_VARS := BR2_EXTERNAL=$(REPO_BUILDROOT_TREE_FULLPATH) \
			BR2_DL_DIR=$(WORKSPACE_TOPLEVEL)/output/dl

%:
	$(BUILDROOT_ENV_VARS) make O=$(WORKSPACE_TOPLEVEL)/output/buildroot -C $(REPO_BUILDROOT_FULLPATH) $*
