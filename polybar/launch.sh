killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar vale &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload vale &
  done
else
  polybar --reload vale &
fi
