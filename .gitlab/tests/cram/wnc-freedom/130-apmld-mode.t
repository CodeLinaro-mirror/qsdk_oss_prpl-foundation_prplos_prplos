Create R alias:

  $ alias R="${CRAM_REMOTE_COMMAND:-}"
  $ . "${TESTDIR}/../scripts/ap_mld.sh"

  $ enable_mlo_for_test
  01/opt/prplmesh/bin/beerocks_agent
  /opt/prplmesh/bin/beerocks_controller
  /opt/prplmesh/bin/beerocks_fronthaul -i wlan0
  /opt/prplmesh/bin/beerocks_fronthaul -i wlan1
  /opt/prplmesh/bin/beerocks_fronthaul -i wlan2
  /opt/prplmesh/bin/beerocks_vendor_message
  /opt/prplmesh/bin/ieee1905_transport
  MLO_ENABLED

Create instances of Network.AccessPoint and push them to the agent:

  $ create_network_ap_and_push_agent
  
  {"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.":{}}
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.":{"Band2_4G":1}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.":{"Band5GH":1}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.":{"Band5GL":1}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.":{"Band6G":1}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.":{"Enable":1}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.":{"SSID":"prplOS"}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.Security.":{"ModeEnabled":"WPA3-Personal"}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.Security.":{"SAEPassphrase":"password"}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.Security.":{"KeyPassphrase":"password"}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.":{"MultiApMode":"Fronthaul"}}]
  
  
  [{"X_PRPLWARE-COM_WiFiController.Network.AccessPoint.1.":{"MLDUnit":7}}]
  
  OPERATIONAL (15)
  
  X_PRPLWARE-COM_WiFiController.Network.AccessPointCommit() returned
  [""]
  
  AP_COMMIT_OK

  $ sleep 10

Verify MLDUnit Set by Agent in 2.4GHz, 5GHz and 6GHz:

  $ R logger -t cram "Verifying MLDUnit values in Data Model..."
  $ verify_mldunit_set_by_agent
  0
  0
  0

Check the MLO group in iw dev:

  $ R logger -t cram " To check interface status"
  $ check_triband_enabled
  TRIBAND_TRUE

Get APMLD configuration from Device.WiFi.APMLD.1
  $ out1=$(R "ba-cli 'Device.WiFi.APMLD.1.APMLDConfig.?'" | grep -E 'Enabled=' | sed 's/.*\.\(EMLMREnabled\|EMLSREnabled\|NSTREnabled\|STREnabled\)=/\1=/' | sort)

Get APMLD configuration from DataElements view
  $ out2=$(R "ba-cli 'Device.WiFi.DataElements.Network.Device.1.APMLD.*.APMLDConfig.?'" | grep -E 'Enabled=' | sed 's/.*\.\(EMLMREnabled\|EMLSREnabled\|NSTREnabled\|STREnabled\)=/\1=/' | sort)

Compare: same values => OK, else MISMATCH and show both:

  $ [ "$out1" = "$out2" ] && echo OK || { echo MISMATCH; echo '--- Device.WiFi'; echo "$out1"; echo '--- DataElements'; echo "$out2"; }
  OK

Restore defautlt MLDUnit and config values:

  $ R logger -t cram "Restore default MLD configuration"

  $ revert_mlo_to_defaults
  
  [{"Device.WiFi.SSID.1.":{"MLDUnit":-1}}]
  
  
  [{"Device.WiFi.SSID.3.":{"MLDUnit":1}}]
  
  
  [{"Device.WiFi.SSID.4.":{"MLDUnit":-1}}]
  
  
  [{"Device.WiFi.SSID.6.":{"MLDUnit":1}}]
  
  
  [{"Device.WiFi.SSID.7.":{"MLDUnit":-1}}]
  
  
  [{"Device.WiFi.SSID.9.":{"MLDUnit":1}}]
  
  
  [{"Device.WiFi.SSID.16.":{"MLDUnit":0}}]
  
  
  [{"Device.WiFi.SSID.17.":{"MLDUnit":1}}]
  
  
  [{"Device.WiFi.SSID.18.":{"MLDUnit":0}}]
  
  01/opt/prplmesh/bin/beerocks_agent
  /opt/prplmesh/bin/beerocks_controller
  /opt/prplmesh/bin/beerocks_fronthaul -i wlan0
  /opt/prplmesh/bin/beerocks_fronthaul -i wlan1
  /opt/prplmesh/bin/beerocks_fronthaul -i wlan2
  /opt/prplmesh/bin/beerocks_vendor_message
  /opt/prplmesh/bin/ieee1905_transport
  MLO_DEFAULTS_RESTORED

Final log:

  $ R logger -t cram "APMLD Mode Test Completed!"
