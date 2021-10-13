#!/usr/bin/env bash

source bin/io.sh

BIN_DCONF=$(which dconf)
if [ ! -x "$BIN_DCONF" ]; then 
	info "Skipping - dconf not available"
	return
fi


cat dconf/wm.conf | $BIN_DCONF load /

success "dconf setup complete"