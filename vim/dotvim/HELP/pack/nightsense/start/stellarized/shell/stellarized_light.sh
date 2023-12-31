#!/bin/sh
# base16-shell (https://github.com/chriskempson/base16-shell)
# Base16 Shell template by Chris Kempson (http://chriskempson.com)
# stellarized_light scheme by haystackandroid (https://github.com/haystackandroid/stellarized)

color00="fc/ee/e0" # Base 00 - Black
color01="c6/39/4c" # Base 08 - Red
color02="00/7f/25" # Base 0B - Green
color03="8b/68/00" # Base 0A - Yellow
color04="00/6d/cc" # Base 0D - Blue
color05="a3/48/ae" # Base 0E - Magenta
color06="00/79/89" # Base 0C - Cyan
color07="4a/50/67" # Base 05 - White
color08="ec/da/c9" # Base 03 - Bright Black
color09=$color01 # Base 08 - Bright Red
color10=$color02 # Base 0B - Bright Green
color11=$color03 # Base 0A - Bright Yellow
color12=$color04 # Base 0D - Bright Blue
color13=$color05 # Base 0E - Bright Magenta
color14=$color06 # Base 0C - Bright Cyan
color15="2d/32/43" # Base 07 - Bright White
color_foreground="4a/50/67" # Base 05
color_background="fc/ee/e0" # Base 00

if [ -n "$TMUX" ]; then
  # Tell tmux to pass the escape sequences through
  # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
  put_template() { printf 'Ptmux;]4;%d;rgb:%s\\' $@; }
  put_template_var() { printf 'Ptmux;]%d;rgb:%s\\' $@; }
  put_template_custom() { printf 'Ptmux;]%s%s\\' $@; }
elif [ "${TERM%%[-.]*}" = "screen" ]; then
  # GNU screen (screen, screen-256color, screen-256color-bce)
  put_template() { printf 'P]4;%d;rgb:%s\' $@; }
  put_template_var() { printf 'P]%d;rgb:%s\' $@; }
  put_template_custom() { printf 'P]%s%s\' $@; }
elif [ "${TERM%%-*}" = "linux" ]; then
  put_template() { [ $1 -lt 16 ] && printf "\e]P%x%s" $1 $(echo $2 | sed "s/\///g"); }
  put_template_var() { true; }
  put_template_custom() { true; }
else
  put_template() { printf ']4;%d;rgb:%s\' $@; }
  put_template_var() { printf ']%d;rgb:%s\' $@; }
  put_template_custom() { printf ']%s%s\' $@; }
fi

# 16 color space
put_template 0  $color00
put_template 1  $color01
put_template 2  $color02
put_template 3  $color03
put_template 4  $color04
put_template 5  $color05
put_template 6  $color06
put_template 7  $color07
put_template 8  $color08
put_template 9  $color09
put_template 10 $color10
put_template 11 $color11
put_template 12 $color12
put_template 13 $color13
put_template 14 $color14
put_template 15 $color15

# foreground / background / cursor color
if [ -n "$ITERM_SESSION_ID" ]; then
  # iTerm2 proprietary escape codes
  put_template_custom Pg 4a5067 # foreground
  put_template_custom Ph fceee0 # background
  put_template_custom Pi 4a5067 # bold color
  put_template_custom Pj 006dcc # selection color
  put_template_custom Pk fceee0 # selected text color
  put_template_custom Pl 4a5067 # cursor
  put_template_custom Pm fceee0 # cursor text
else
  put_template_var 10 $color_foreground
  if [ "$BASE16_SHELL_SET_BACKGROUND" != false ]; then
    put_template_var 11 $color_background
    if [ "${TERM%%-*}" = "rxvt" ]; then
      put_template_var 708 $color_background # internal border (rxvt)
    fi
  fi
  put_template_custom 12 ";7" # cursor (reverse video)
fi

# clean up
unset -f put_template
unset -f put_template_var
unset -f put_template_custom
unset color00
unset color01
unset color02
unset color03
unset color04
unset color05
unset color06
unset color07
unset color08
unset color09
unset color10
unset color11
unset color12
unset color13
unset color14
unset color15
unset color_foreground
unset color_background

