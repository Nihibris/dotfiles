#polybar-msg cmd quit
killall -q polybar
echo "---" | tee -a /tmp/myBar.log
polybar root 2>&1 | tee -a /tmp/root.log & disown
polybar left 2>&1 | tee -a /tmp/left.log & disown
polybar center 2>&1 | tee -a /tmp/center.log & disown
polybar right 2>&1 | tee -a /tmp/right.log & disown

echo "Bars launched..."
