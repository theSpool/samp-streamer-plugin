# GNU Make solution makefile autogenerated by Premake

.NOTPARALLEL:

ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),release)
  streamer_config = release
endif
ifeq ($(config),debug)
  streamer_config = debug
endif

PROJECTS := streamer

.PHONY: all clean help $(PROJECTS)

all: $(PROJECTS)

streamer:
ifneq (,$(streamer_config))
	@echo "==== Building streamer ($(streamer_config)) ===="
	@${MAKE} --no-print-directory -C . -f streamer.make config=$(streamer_config)
endif

clean:
	@${MAKE} --no-print-directory -C . -f streamer.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  release"
	@echo "  debug"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   streamer"
	@echo ""
	@echo "For more information, see http://industriousone.com/premake/quick-start"
