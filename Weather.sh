source ../../../plugin_updater.sh ## ALWAYS INCLUDE THIS
plugin_file_name=`basename "$0"`
### DO WHATEVER YOU WANT HERE,THEN UPDATE THOSE VALUES TO THE DATABASE WITH THE FUNCTIONS BELOW:
# updateVariable <key> <value>
# displayPluginInfo
### PLUGIN CONFIGURATION ###
author="Zach"
version="0"
plugin_name="Weather"
### END PLUGIN CONFIGURATION

## Weather Condition Text Name
info=$(curl -s wttr.in?format=%C)
updateVariable "condition" "$info"


## Weather Humidity Text Name
info=$(curl -s wttr.in?format=%h)
#echo "$info"
updateVariable "humidity" "$info"

## Weather temp actual Text Name
info=$(curl -s wttr.in?format=%t)
#echo "$info"
updateVariable "temp_actual" "$info"

## Weather temp feels Text Name
info=$(curl -s wttr.in?format=%f)
#echo "$info"
updateVariable "temp_feels" "$info"

## Weather wind Text Name
info=$(curl -s wttr.in?format=%w)
#echo "$info"
updateVariable "wind" "$info"

## Weather moon phase Text Name
info=$(curl -s wttr.in?format=%M)
#echo "$info"
updateVariable "moon_day" "$info"

## Weather dawn hour Text Name
info=$(curl -s wttr.in?format=%D)
IFS=':' read -ra times <<< "$info"
unset IFS
updateVariable "dawn_hour" "${times[0]}"
updateVariable "dawn_min" "${times[1]}"

## Weather sunrise Text Name
info=$(curl -s wttr.in?format=%S)
IFS=':' read -ra times <<< "$info"
unset IFS
#echo "$info"
#echo "${times[0]}"
updateVariable "sunrise_hour" "${times[0]}"
updateVariable "sunrise_min" "${times[1]}"

## Weather sunrise Text Name
info=$(curl -s wttr.in?format=%s)
IFS=':' read -ra times <<< "$info"
unset IFS
#echo "$info"
#echo "${times[0]}"
updateVariable "sunset_hour" "${times[0]}"
updateVariable "sunset_min" "${times[1]}"

## Weather sunrise Text Name
info=$(curl -s wttr.in?format=%d)
IFS=':' read -ra times <<< "$info"
unset IFS
#echo "$info"
#echo "${times[0]}"
updateVariable "dusk_hour" "${times[0]}"
updateVariable "dusk_min" "${times[1]}"

## Weather sunrise Text Name
info=$(curl -s wttr.in?format=%p)
#echo "$info"
updateVariable "rainfall" "$info"

function setup() {
  echo "This is a setup for weather"
}
"$@"
