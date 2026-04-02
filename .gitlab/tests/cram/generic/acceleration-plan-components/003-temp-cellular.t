Create R alias:

  $ alias R="${CRAM_REMOTE_COMMAND:-}"

  $ R logger -t cram "Starting cellular manager test"

  $ R "ls /etc/init.d/modemmanager"
  /etc/init.d/modemmanager

  $ R "ls /etc/init.d/mod*"
  /etc/init.d/mod-httpaccess-lighttpd
  /etc/init.d/modemmanager

  $ R "mmcli -L"
  No modems were found

  $ R "ubus-cli TrustedElements.?"
  > TrustedElements.?
  TrustedElements.
  TrustedElements.NumberOfSIMEntries=5
  TrustedElements.SIM.1.
  TrustedElements.SIM.1.Alias="SIM1"
  TrustedElements.SIM.1.EID=""
  TrustedElements.SIM.1.ESIMClassEnabledProfile=""
  TrustedElements.SIM.1.ESIMProfileAddStatus=""
  TrustedElements.SIM.1.ESIMTestMode=0
  TrustedElements.SIM.1.GID1=""
  TrustedElements.SIM.1.HomeNetworkPublicKeyID=0
  TrustedElements.SIM.1.ICCID=""
  TrustedElements.SIM.1.IMSI="405869185936909"
  TrustedElements.SIM.1.MSISDN=""
  TrustedElements.SIM.1.PIN=""
  TrustedElements.SIM.1.PINCheck="Off"
  TrustedElements.SIM.1.ProfileNumberOfEntries=0
  TrustedElements.SIM.1.ProtectionScheme=0
  TrustedElements.SIM.1.RoutingIndicator=0
  TrustedElements.SIM.1.SMSC=""
  TrustedElements.SIM.1.Status="None"
  TrustedElements.SIM.1.Type="None"
  TrustedElements.SIM.1.Usage="UICC"
  TrustedElements.SIM.2.
  TrustedElements.SIM.2.Alias="SIM2"
  TrustedElements.SIM.2.EID=""
  TrustedElements.SIM.2.ESIMClassEnabledProfile=""
  TrustedElements.SIM.2.ESIMProfileAddStatus=""
  TrustedElements.SIM.2.ESIMTestMode=0
  TrustedElements.SIM.2.GID1=""
  TrustedElements.SIM.2.HomeNetworkPublicKeyID=0
  TrustedElements.SIM.2.ICCID=""
  TrustedElements.SIM.2.IMSI="405869185920811"
  TrustedElements.SIM.2.MSISDN=""
  TrustedElements.SIM.2.PIN=""
  TrustedElements.SIM.2.PINCheck="Off"
  TrustedElements.SIM.2.ProfileNumberOfEntries=0
  TrustedElements.SIM.2.ProtectionScheme=0
  TrustedElements.SIM.2.RoutingIndicator=0
  TrustedElements.SIM.2.SMSC=""
  TrustedElements.SIM.2.Status="None"
  TrustedElements.SIM.2.Type="None"
  TrustedElements.SIM.2.Usage="UICC"
  TrustedElements.SIM.3.
  TrustedElements.SIM.3.Alias="SIM3"
  TrustedElements.SIM.3.EID=""
  TrustedElements.SIM.3.ESIMClassEnabledProfile=""
  TrustedElements.SIM.3.ESIMProfileAddStatus=""
  TrustedElements.SIM.3.ESIMTestMode=0
  TrustedElements.SIM.3.GID1=""
  TrustedElements.SIM.3.HomeNetworkPublicKeyID=0
  TrustedElements.SIM.3.ICCID=""
  TrustedElements.SIM.3.IMSI="404940933686654"
  TrustedElements.SIM.3.MSISDN=""
  TrustedElements.SIM.3.PIN=""
  TrustedElements.SIM.3.PINCheck="Off"
  TrustedElements.SIM.3.ProfileNumberOfEntries=0
  TrustedElements.SIM.3.ProtectionScheme=0
  TrustedElements.SIM.3.RoutingIndicator=0
  TrustedElements.SIM.3.SMSC=""
  TrustedElements.SIM.3.Status="None"
  TrustedElements.SIM.3.Type="None"
  TrustedElements.SIM.3.Usage="UICC"
  TrustedElements.SIM.4.
  TrustedElements.SIM.4.Alias="SIM4"
  TrustedElements.SIM.4.EID=""
  TrustedElements.SIM.4.ESIMClassEnabledProfile=""
  TrustedElements.SIM.4.ESIMProfileAddStatus=""
  TrustedElements.SIM.4.ESIMTestMode=0
  TrustedElements.SIM.4.GID1=""
  TrustedElements.SIM.4.HomeNetworkPublicKeyID=0
  TrustedElements.SIM.4.ICCID=""
  TrustedElements.SIM.4.IMSI="404844281120312"
  TrustedElements.SIM.4.MSISDN=""
  TrustedElements.SIM.4.PIN=""
  TrustedElements.SIM.4.PINCheck="Off"
  TrustedElements.SIM.4.ProfileNumberOfEntries=0
  TrustedElements.SIM.4.ProtectionScheme=0
  TrustedElements.SIM.4.RoutingIndicator=0
  TrustedElements.SIM.4.SMSC=""
  TrustedElements.SIM.4.Status="None"
  TrustedElements.SIM.4.Type="None"
  TrustedElements.SIM.4.Usage="UICC"
  TrustedElements.SIM.5.
  TrustedElements.SIM.5.Alias="SIM5"
  TrustedElements.SIM.5.EID=""
  TrustedElements.SIM.5.ESIMClassEnabledProfile=""
  TrustedElements.SIM.5.ESIMProfileAddStatus=""
  TrustedElements.SIM.5.ESIMTestMode=0
  TrustedElements.SIM.5.GID1=""
  TrustedElements.SIM.5.HomeNetworkPublicKeyID=0
  TrustedElements.SIM.5.ICCID=""
  TrustedElements.SIM.5.IMSI="404800201030295"
  TrustedElements.SIM.5.MSISDN=""
  TrustedElements.SIM.5.PIN=""
  TrustedElements.SIM.5.PINCheck="Off"
  TrustedElements.SIM.5.ProfileNumberOfEntries=0
  TrustedElements.SIM.5.ProtectionScheme=0
  TrustedElements.SIM.5.RoutingIndicator=0
  TrustedElements.SIM.5.SMSC=""
  TrustedElements.SIM.5.Status="None"
  TrustedElements.SIM.5.Type="None"
  TrustedElements.SIM.5.Usage="UICC"

  $ R "ubus-cli Cellular.Interface.?"
  > Cellular.Interface.?
  Cellular.Interface.1.
  Cellular.Interface.1.Alias="CELLULAR0"
  Cellular.Interface.1.AvailableNetworks=""
  Cellular.Interface.1.CurrentAccessTechnology=""
  Cellular.Interface.1.DownstreamMaxBitRate=0
  Cellular.Interface.1.Enable=1
  Cellular.Interface.1.IMEI=""
  Cellular.Interface.1.LastChange=0
  Cellular.Interface.1.LowerLayers=""
  Cellular.Interface.1.Mode="Unknown"
  Cellular.Interface.1.Name="wwan0"
  Cellular.Interface.1.NetworkInUse=""
  Cellular.Interface.1.NetworkRequested=""
  Cellular.Interface.1.PreferredAccessTechnology="LTE"
  Cellular.Interface.1.RSRP=-140
  Cellular.Interface.1.RSRQ=-20
  Cellular.Interface.1.RSSI=-117
  Cellular.Interface.1.SIMReferenceList="Device.TrustedElements.SIM.1.,Device.TrustedElements.SIM.2."
  Cellular.Interface.1.Status="Unknown"
  Cellular.Interface.1.SupportedAccessTechnologies=""
  Cellular.Interface.1.Upstream=1
  Cellular.Interface.1.UpstreamMaxBitRate=0
  Cellular.Interface.1.X_PRPLWARE-COM_SignalQualityPollingRate=30
  Cellular.Interface.1.SMS.
  Cellular.Interface.1.SMS.MessageNumberOfEntries=0
  Cellular.Interface.1.SMS.StorageNumberOfEntries=0
  Cellular.Interface.1.SMS.Incoming.
  Cellular.Interface.1.SMS.Incoming.CapacityLimit=-1
  Cellular.Interface.1.SMS.Incoming.StorageRef=""
  Cellular.Interface.1.SMS.Outgoing.
  Cellular.Interface.1.SMS.Outgoing.CapacityLimit=-1
  Cellular.Interface.1.SMS.Outgoing.StorageRef=""
  Cellular.Interface.1.Stats.
  Cellular.Interface.1.Stats.BroadcastPacketsReceived=0
  Cellular.Interface.1.Stats.BroadcastPacketsSent=0
  Cellular.Interface.1.Stats.BytesReceived=0
  Cellular.Interface.1.Stats.BytesSent=0
  Cellular.Interface.1.Stats.DiscardPacketsReceived=0
  Cellular.Interface.1.Stats.DiscardPacketsSent=0
  Cellular.Interface.1.Stats.ErrorsReceived=0
  Cellular.Interface.1.Stats.ErrorsSent=0
  Cellular.Interface.1.Stats.MulticastPacketsReceived=0
  Cellular.Interface.1.Stats.MulticastPacketsSent=0
  Cellular.Interface.1.Stats.PacketsReceived=0
  Cellular.Interface.1.Stats.PacketsSent=0
  Cellular.Interface.1.Stats.UnicastPacketsReceived=0
  Cellular.Interface.1.Stats.UnicastPacketsSent=0
  Cellular.Interface.1.Stats.UnknownProtoPacketsReceived=0
