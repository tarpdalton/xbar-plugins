#!/bin/bash

# <xbar.title>Show ANSI colors</xbar.title>
# <xbar.version>v1.0</xbar.version>
# <xbar.author>Kent Karlsson</xbar.author>
# <xbar.author.github>vogonistic</xbar.author.github>
# <xbar.desc>Example of how to use ANSI color codes</xbar.desc>
# <xbar.image>http://i.imgur.com/kGVgf6y.png</xbar.image>
# <xbar.abouturl>https://github.com/matryer/bitbar-plugins/blob/master/Tutorial/ansi.sh</xbar.abouturl>

echo -e "\033[34mA\033[32mN\033[31mS\033[33mI\033[0m | ansi=true"
echo "---"

T='gYw'   # The test text
echo -e "                 40m     41m     42m     43m\
     44m     45m     46m     47m | ansi=true font=courier trim=false";

for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m';
  do FG=${FGs// /}
  echo -en " $FGs \033[$FG  $T  "
  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
  done
  echo " | ansi=true font=courier trim=false";
done
echo "---"
echo "Open color codes in browser… | href=http://misc.flogisoft.com/bash/tip_colors_and_formatting#colors"
echo "Refresh | refresh=true"
