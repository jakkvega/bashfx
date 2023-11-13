#-------------------------------------------------------------------------------
# Term
#-------------------------------------------------------------------------------

  red=$(tput setaf 1)
  green=$(tput setaf 2)
  blue=$(tput setaf 39)
  blue2=$(tput setaf 27)
  cyan=$(tput setaf 14)
  orange=$(tput setaf 214)
  yellow=$(tput setaf 226)
  purple=$(tput setaf 213)
  white=$(tput setaf 248)
  white2=$(tput setaf 15)
  grey=$(tput setaf 244)
  grey2=$(tput setaf 245)
  revc=$(tput rev)
  x=$(tput sgr0)
  eol="$(tput el)"
  bld="$(tput bold)"
  line="##---------------$nl"
  tab=$'\\t'
  nl=$'\\n'

  delta="\xE2\x96\xB3"
  pass="\xE2\x9C\x93"
  fail="\xE2\x9C\x97"
  star="\xE2\x98\x85"
  lambda="\xCE\xBB"
  idots="\xE2\x80\xA6"

#-------------------------------------------------------------------------------
# Printers
#-------------------------------------------------------------------------------

  #print to stderr
  __printf(){
    local text=${1:-}; 
    [ -n "$text" ] && printf "%b" "${text}" 1>&2 || :
  }
