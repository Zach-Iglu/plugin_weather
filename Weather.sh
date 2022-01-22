source ../../../preset_updater.sh ## ALWAYS INCLUDE THIS
preset_file_name=`basename "$0"`
desc="INSERT DESCRIPTION HERE"
cooldown="0" # cooldown in minutes
initializePreset
### Valid Functions Below ###
# getPluginVal <key>
# getSettingsVal <key>
# getDeviceVal <ip> <key>
# setDeviceVal <ip> <key> <value>
# getEvent <ip> <key>
#### BEGIN USER CODe ####





function setup() {
  echo "This is a setup for weather"
}

#### END USER CODe ####
finishPreset
"$@"
