
#cols
printf "%-20.20s | %-12s | %-40s\n" "$name" "$vers" "$fwd"

#overwrite
[ $__buf_list -eq 0 ] && flag="\r" &&  newl="$eol" || newl="\n"
handle_input
for i in ${!arr[@]}; do
  this="${arr[$i]}"
  [ -n "$this" ] && printf "$flag$orange$dots(%02d of %02d) $this $x$newl" "$i" "$len"
  sleep 0.1
done
cleanup
printf "$flag$green$pass (%02d of %02d) Read. $x$eol\n" "$len" "$len"

	eol="$(tput el)"
	eos="$(tput ed)"
	cll="$(tput cuu 1 && tput el)"
