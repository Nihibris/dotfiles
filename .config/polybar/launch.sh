#polybar-msg cmd quit
killall -q polybar
echo "---" | tee -a /tmp/myBar.log
polybar root 2>&1 | tee -a /tmp/polybar1.log & disown
polybar left 2>&1 | tee -a /tmp/polybar1.log & disown
polybar center 2>&1 | tee -a /tmp/polybar1.log & disown
polybar right 2>&1 | tee -a /tmp/polybar2.log & disown
echo "Bars launched..."
