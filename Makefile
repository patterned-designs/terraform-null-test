# Sane defaults
SHELL := /bin/bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

.DEFAULT_GOAL: _DEFAULT
.PHONY: _DEFAULT
_DEFAULT: ; @echo -n ""
# ---------------------- Includes ---------------------------
ifdef GLOBAL_MAKEFILE_LIBRARY
  include $(wildcard $(GLOBAL_MAKEFILE_LIBRARY)/*.mk)
endif

# ---------------------- COMMANDS ---------------------------

.PHONY: fmt
fmt: # Format the entire repository
	@terraform -chdir="$(SELF_DIR)" fmt 

.PHONY: info
info: # Emit the module metadata
	cat "$(SELF_DIR)/Module.yaml"

.PHONY: examples
examples: # List all of the examples within the module
	@echo "Examples:"
	find "$(SELF_DIR)/examples/" -mindepth 1 -maxdepth 1 -type d -printf '  > %P\n'