#!/usr/bin/env bash
##------------------------------------------------------------------------------
## name:fx-core
## autobuild: 00003
## author:qodeninja
## updated: Wed 2019-07-31 10:40 PM
##------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# FX Main
#-------------------------------------------------------------------------------

	function main(){
		local call ret
		for call in "${@}"; do
			case $call in
				inst*)     api_install;   ret=$?;;
				unins*)    api_uninstall; ret=$?;;
				dl)				 fx_vars; fx_download; ret=$?;;
				*)
					if [ ! -z "$call" ]; then
						die "Invalid command $call";
						ret 1;
					fi
				;;
			esac
		done
		#fx_dump
		return $ret
	}

#-------------------------------------------------------------------------------
# FX Driver
#-------------------------------------------------------------------------------

	if [ "$0" = "-bash" ]; then
		:
	else
		orig_args=("${@}")
		api_options "${orig_args[@]}"
		args=( "${orig_args[@]/\-*}" ); #delete anything that looks like an option
		main "${args[@]}";ret=$?
	fi

