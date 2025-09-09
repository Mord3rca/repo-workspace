.DEFAULT_GOAL := all

WORKSPACE_TOPLEVEL := $(CURDIR)
MAKEFILE_DIR := $(patsubst %/,%,$(dir $(realpath $(lastword $(MAKEFILE_LIST)))))

export WORKSPACE_TOPLEVEL

ifeq ($(MAKEFILE_DIR),$(WORKSPACE_TOPLEVEL))
$(warning You are not supposed to call this Makefile directly from this repository...)
$(warning Please use repo and sync workspace with: "repo init -u ssh://git@github.com/Mord3rca/manifests")
endif

include $(MAKEFILE_DIR)/repo.mk
include $(MAKEFILE_DIR)/buildroot.mk
