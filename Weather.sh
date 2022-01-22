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




function setup() {
  echo "This is a setup for weather"
}
"$@"
