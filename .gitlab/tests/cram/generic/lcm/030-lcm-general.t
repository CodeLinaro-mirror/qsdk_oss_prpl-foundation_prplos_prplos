## Setup test configuration
Setup the test configuration:

  $ alias R="${CRAM_REMOTE_COMMAND:-}"
  $ alias C="${CRAM_REMOTE_COPY:-}"
  $ S=". /tmp/script_functions.sh"
  $ C ${TESTDIR}/script_functions.sh root@${TARGET_LAN_IP}:/tmp/script_functions.sh
  Warning: Permanently added '*' (*) to the list of known hosts* (glob)

Check Cthulhu datamodel:
  $ R "ba-cli -l -- gsdm -p Cthulhu. | sed '/^$/d'"
  ... (Object      ) Cthulhu.
  ... (Object      ) Cthulhu.Config.
  .R. (cstring_t   ) Cthulhu.Config.PluginLocation
  .R. (cstring_t   ) Cthulhu.Config.ImageLocation
  .R. (bool        ) Cthulhu.Config.UseOverlayFS
  .R. (uint32_t    ) Cthulhu.Config.GracefulShutdownTimeoutSeconds
  .R. (bool        ) Cthulhu.Config.UseBundles
  .R. (cstring_t   ) Cthulhu.Config.StorageLocation
  .R. (cstring_t   ) Cthulhu.Config.DefaultBackend
  .R. (cstring_t   ) Cthulhu.Config.BundleLocation
  .R. (cstring_t   ) Cthulhu.Config.BlobLocation
  ... (Object      ) Cthulhu.Config.Debug.
  .RW (bool        ) Cthulhu.Config.Debug.DefaultKeepOverlayfsMounted
  ... (Object      ) Cthulhu.Config.LocalPolicyManager.
  .R. (cstring_t   ) Cthulhu.Config.LocalPolicyManager.OnboardingLocation
  .R. (bool        ) Cthulhu.Config.LocalPolicyManager.ExecutedAfterUpgrade
  .R. (cstring_t   ) Cthulhu.Config.LocalPolicyManager.PolicyFile
  .R. (cstring_t   ) Cthulhu.Config.LocalPolicyManager.PolicyFileOverride
  ... (Object      ) Cthulhu.Config.Syslog.
  .R. (cstring_t   ) Cthulhu.Config.Syslog.LogLocation
  ... (Object      ) Cthulhu.Container.
  M.. (Object      ) Cthulhu.Container.Instances.{i}.
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Bundle
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.BundleVersion
  .R. (bool        ) Cthulhu.Container.Instances.{i}.RootfsIsMounted
  .RW (bool        ) Cthulhu.Container.Instances.{i}.LastReqStateActive
  .RW (amxc_ts_t   ) Cthulhu.Container.Instances.{i}.StartTime
  .R. (csv_string_t) Cthulhu.Container.Instances.{i}.RequiredRoles
  .R. (int32_t     ) Cthulhu.Container.Instances.{i}.Pid
  .R. (amxc_ts_t   ) Cthulhu.Container.Instances.{i}.Updated
  .R. (csv_string_t) Cthulhu.Container.Instances.{i}.RegisterTrustPaths
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Description
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.ContainerId
  .R. (csv_string_t) Cthulhu.Container.Instances.{i}.AvailableUserRoleCapabilities
  .R. (csv_string_t) Cthulhu.Container.Instances.{i}.RequiredUserRolesNames
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.PrivateSandbox
  .RW (bool        ) Cthulhu.Container.Instances.{i}.KeepOverlayfsMounted
  .R. (csv_string_t) Cthulhu.Container.Instances.{i}.OptionalRoles
  .RW (bool        ) Cthulhu.Container.Instances.{i}.Autostart
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Owner
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Status
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.DiskLocation
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.LinkedUUID
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.AutoMountIPC
  .R. (amxc_ts_t   ) Cthulhu.Container.Instances.{i}.Created
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.ModuleVersion
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Vendor
  .R. (csv_string_t) Cthulhu.Container.Instances.{i}.AssignedRoles
  .R. (csv_string_t) Cthulhu.Container.Instances.{i}.RequiredUserRoles
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.Alias
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.EndpointID
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Sandbox
  ... (Object      ) Cthulhu.Container.Instances.{i}.AutoRestart.
  .RW (amxc_ts_t   ) Cthulhu.Container.Instances.{i}.AutoRestart.NextRestart
  .RW (bool        ) Cthulhu.Container.Instances.{i}.AutoRestart.Enabled
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.AutoRestart.RetryMaximumWaitInterval
  .RW (amxc_ts_t   ) Cthulhu.Container.Instances.{i}.AutoRestart.RunningSince
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.AutoRestart.MaximumRetryCount
  .RW (amxc_ts_t   ) Cthulhu.Container.Instances.{i}.AutoRestart.LastRestarted
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.AutoRestart.ResetPeriod
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.AutoRestart.RetryMinimumWaitInterval
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.AutoRestart.RetryIntervalMultiplier
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.AutoRestart.RetryCount
  MAD (Object      ) Cthulhu.Container.Instances.{i}.EnvVariable.{i}.
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.EnvVariable.{i}.Key
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.EnvVariable.{i}.Value
  MAD (Object      ) Cthulhu.Container.Instances.{i}.EnvVariableOCI.{i}.
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.EnvVariableOCI.{i}.Key
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.EnvVariableOCI.{i}.Value
  M.. (Object      ) Cthulhu.Container.Instances.{i}.HostObject.{i}.
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.HostObject.{i}.Options
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.HostObject.{i}.Source
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.HostObject.{i}.Destination
  M.. (Object      ) Cthulhu.Container.Instances.{i}.Interfaces.{i}.
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Interfaces.{i}.Name
  M.. (Object      ) Cthulhu.Container.Instances.{i}.Interfaces.{i}.Addresses.{i}.
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Interfaces.{i}.Addresses.{i}.Address
  M.. (Object      ) Cthulhu.Container.Instances.{i}.Layers.{i}.
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Layers.{i}.MountedLayer
  .R. (uint32_t    ) Cthulhu.Container.Instances.{i}.Layers.{i}.Index
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Layers.{i}.Layer
  MAD (Object      ) Cthulhu.Container.Instances.{i}.Mounts.{i}.
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.Mounts.{i}.Options
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.Mounts.{i}.Source
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.Mounts.{i}.Type
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.Mounts.{i}.Destination
  ... (Object      ) Cthulhu.Container.Instances.{i}.Plugins.
  ... (Object      ) Cthulhu.Container.Instances.{i}.PluginsPrivate.
  ... (Object      ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.
  .R. (bool        ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.ShareParentNetwork
  M.. (Object      ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.AccessInterfaces.{i}.
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.AccessInterfaces.{i}.Reference
  MAD (Object      ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.
  .RW (uint16_t    ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.Port
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.Interface
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.Status
  .RW (uint16_t    ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.InternalPort
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.InstanceName
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.ApplicationProtocol
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.Reference
  .RW (bool        ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.Enable
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.Domain
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.TransportProtocol
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.PortForwardingPath
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.Path
  MAD (Object      ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.TextRecord.{i}.
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.TextRecord.{i}.Key
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.DNSSD.{i}.TextRecord.{i}.Value
  M.. (Object      ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.FirewallRules.{i}.
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.FirewallRules.{i}.Path
  MAD (Object      ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.PortForwarding.{i}.
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.PortForwarding.{i}.Protocol
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.PortForwarding.{i}.ExternalPort
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.PortForwarding.{i}.Interface
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.PortForwarding.{i}.Status
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.PortForwarding.{i}.InternalPort
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.PluginsPrivate.NetworkConfig.PortForwarding.{i}.Path
  ... (Object      ) Cthulhu.Container.Instances.{i}.Resources.
  .RW (int32_t     ) Cthulhu.Container.Instances.{i}.Resources.AllocatedCPUPercent
  .RW (int32_t     ) Cthulhu.Container.Instances.{i}.Resources.AllocatedDiskSpace
  .RW (int32_t     ) Cthulhu.Container.Instances.{i}.Resources.AllocatedMemory
  ... (Object      ) Cthulhu.Container.Instances.{i}.Resources.Stats.
  ... (Object      ) Cthulhu.Container.Instances.{i}.Resources.Stats.DiskSpace.
  .R. (int64_t     ) Cthulhu.Container.Instances.{i}.Resources.Stats.DiskSpace.Used
  .R. (int64_t     ) Cthulhu.Container.Instances.{i}.Resources.Stats.DiskSpace.Free
  .R. (int64_t     ) Cthulhu.Container.Instances.{i}.Resources.Stats.DiskSpace.Total
  ... (Object      ) Cthulhu.Container.Instances.{i}.Resources.Stats.Memory.
  .R. (int64_t     ) Cthulhu.Container.Instances.{i}.Resources.Stats.Memory.Used
  .R. (int64_t     ) Cthulhu.Container.Instances.{i}.Resources.Stats.Memory.Free
  .R. (int64_t     ) Cthulhu.Container.Instances.{i}.Resources.Stats.Memory.Total
  ... (Object      ) Cthulhu.Container.Instances.{i}.Syslog.
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Syslog.SourceRef
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Syslog.VendorLogFileRef
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Syslog.TemplateRef
  .R. (cstring_t   ) Cthulhu.Container.Instances.{i}.Syslog.ActionRef
  ... (Object      ) Cthulhu.Container.Instances.{i}.Unprivileged.
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.Unprivileged.GidMappingRange
  .RW (bool        ) Cthulhu.Container.Instances.{i}.Unprivileged.Enabled
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.Unprivileged.Username
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.Unprivileged.GID
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.Unprivileged.UidMappingStart
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.Unprivileged.NumRequiredUIDs
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.Unprivileged.UidMappingRange
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.Unprivileged.GidMappingStart
  .RW (uint32_t    ) Cthulhu.Container.Instances.{i}.Unprivileged.UID
  .RW (cstring_t   ) Cthulhu.Container.Instances.{i}.Unprivileged.Groupname
  ... (Object      ) Cthulhu.Information.
  .R. (bool        ) Cthulhu.Information.Initialized
  .R. (bool        ) Cthulhu.Information.OverlayFSOnCreate
  .R. (cstring_t   ) Cthulhu.Information.BackendVersion
  .R. (cstring_t   ) Cthulhu.Information.Version
  .R. (bool        ) Cthulhu.Information.BundlesSupported
  .R. (bool        ) Cthulhu.Information.odlLoaded
  .R. (cstring_t   ) Cthulhu.Information.BackendName
  ... (Object      ) Cthulhu.Information.LocalPolicyManager.
  M.. (Object      ) Cthulhu.Information.LocalPolicyManager.Action.{i}.
  .R. (amxc_ts_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.Date
  .R. (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.PolicyScope
  .R. (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.ExecEnvName
  .R. (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.Status
  .R. (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.Action
  .R. (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.Event
  .R. (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.UUID
  .R. (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.PreviousModuleVersion
  .RW (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.Alias
  .R. (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.FaultMessage
  .R. (cstring_t   ) Cthulhu.Information.LocalPolicyManager.Action.{i}.CurrentModuleVersion
  ... (Object      ) Cthulhu.LocalManagement.
  ... (Object      ) Cthulhu.LocalManagement.Action.
  ... (Object      ) Cthulhu.Plugins.
  ... (Object      ) Cthulhu.PluginsPrivate.
  ... (Object      ) Cthulhu.PluginsPrivate.NetworkConfig.
  .RW (cstring_t   ) Cthulhu.PluginsPrivate.NetworkConfig.DefaultInterfaceName
  .RW (cstring_t   ) Cthulhu.PluginsPrivate.NetworkConfig.DefaultFirewallChain
  .RW (cstring_t   ) Cthulhu.PluginsPrivate.NetworkConfig.DefaultBridge
  MAD (Object      ) Cthulhu.PluginsPrivate.NetworkConfig.FirewallRules.{i}.
  .RW (cstring_t   ) Cthulhu.PluginsPrivate.NetworkConfig.FirewallRules.{i}.Interfaces
  MAD (Object      ) Cthulhu.PluginsPrivate.NetworkConfig.FirewallRules.{i}.Rules.{i}.
  .RW (cstring_t   ) Cthulhu.PluginsPrivate.NetworkConfig.FirewallRules.{i}.Rules.{i}.DestInterface
  .RW (cstring_t   ) Cthulhu.PluginsPrivate.NetworkConfig.FirewallRules.{i}.Rules.{i}.SourceIP
  .RW (cstring_t   ) Cthulhu.PluginsPrivate.NetworkConfig.FirewallRules.{i}.Rules.{i}.Target
  MAD (Object      ) Cthulhu.PluginsPrivate.NetworkConfig.Interfaces.{i}.
  .RW (cstring_t   ) Cthulhu.PluginsPrivate.NetworkConfig.Interfaces.{i}.Reference
  .RW (cstring_t   ) Cthulhu.PluginsPrivate.NetworkConfig.Interfaces.{i}.Name
  ... (Object      ) Cthulhu.Sandbox.
  M.. (Object      ) Cthulhu.Sandbox.Instances.{i}.
  .RW (csv_string_t) Cthulhu.Sandbox.Instances.{i}.AvailableRolesNames
  .R. (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Status
  .RW (int32_t     ) Cthulhu.Sandbox.Instances.{i}.AllocatedDiskSpace
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.RestartReason
  .RW (csv_string_t) Cthulhu.Sandbox.Instances.{i}.AvailableRoles
  .RW (bool        ) Cthulhu.Sandbox.Instances.{i}.Enable
  .R. (int32_t     ) Cthulhu.Sandbox.Instances.{i}.Pid
  .R. (amxc_ts_t   ) Cthulhu.Sandbox.Instances.{i}.Created
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Parent
  .R. (csv_string_t) Cthulhu.Sandbox.Instances.{i}.AvailableUserRoles
  .R. (bool        ) Cthulhu.Sandbox.Instances.{i}.CreatedByContainer
  .RW (int32_t     ) Cthulhu.Sandbox.Instances.{i}.AllocatedMemory
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Vendor
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Description
  .RW (int32_t     ) Cthulhu.Sandbox.Instances.{i}.AllocatedCPUPercent
  .R. (csv_string_t) Cthulhu.Sandbox.Instances.{i}.AvailableUserRolesNames
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Version
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Alias
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.SandboxId
  M.. (Object      ) Cthulhu.Sandbox.Instances.{i}.ApplicationData.{i}.
  .R. (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.ApplicationData.{i}.AccessPath
  .R. (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.ApplicationData.{i}.ApplicationUUID
  .R. (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.ApplicationData.{i}.Mountpoint
  .R. (bool        ) Cthulhu.Sandbox.Instances.{i}.ApplicationData.{i}.Encrypted
  .R. (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.ApplicationData.{i}.Retain
  .R. (uint32_t    ) Cthulhu.Sandbox.Instances.{i}.ApplicationData.{i}.Capacity
  .R. (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.ApplicationData.{i}.Name
  .R. (uint32_t    ) Cthulhu.Sandbox.Instances.{i}.ApplicationData.{i}.Utilization
  MAD (Object      ) Cthulhu.Sandbox.Instances.{i}.Devices.{i}.
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Devices.{i}.Device
  .RW (bool        ) Cthulhu.Sandbox.Instances.{i}.Devices.{i}.Create
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Devices.{i}.Permission
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Devices.{i}.Access
  .RW (int32_t     ) Cthulhu.Sandbox.Instances.{i}.Devices.{i}.Major
  .RW (int32_t     ) Cthulhu.Sandbox.Instances.{i}.Devices.{i}.Minor
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Devices.{i}.Type
  ... (Object      ) Cthulhu.Sandbox.Instances.{i}.NetworkNS.
  .RW (bool        ) Cthulhu.Sandbox.Instances.{i}.NetworkNS.Enable
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.NetworkNS.Type
  MAD (Object      ) Cthulhu.Sandbox.Instances.{i}.NetworkNS.Interfaces.{i}.
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.NetworkNS.Interfaces.{i}.Interface
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.NetworkNS.Interfaces.{i}.Bridge
  ... (Object      ) Cthulhu.Sandbox.Instances.{i}.Plugins.
  ... (Object      ) Cthulhu.Sandbox.Instances.{i}.Plugins.DHCP.
  .RW (bool        ) Cthulhu.Sandbox.Instances.{i}.Plugins.DHCP.DefaultEnabled
  MAD (Object      ) Cthulhu.Sandbox.Instances.{i}.Plugins.DHCP.Interfaces.{i}.
  .RW (bool        ) Cthulhu.Sandbox.Instances.{i}.Plugins.DHCP.Interfaces.{i}.EnableDhcp
  .R. (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Plugins.DHCP.Interfaces.{i}.Interface
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.Plugins.DHCP.Interfaces.{i}.PreferredIP
  ... (Object      ) Cthulhu.Sandbox.Instances.{i}.PluginsPrivate.
  ... (Object      ) Cthulhu.Sandbox.Instances.{i}.Stats.
  ... (Object      ) Cthulhu.Sandbox.Instances.{i}.Stats.DiskSpace.
  .R. (int64_t     ) Cthulhu.Sandbox.Instances.{i}.Stats.DiskSpace.Used
  .R. (int64_t     ) Cthulhu.Sandbox.Instances.{i}.Stats.DiskSpace.Free
  .R. (int64_t     ) Cthulhu.Sandbox.Instances.{i}.Stats.DiskSpace.Total
  ... (Object      ) Cthulhu.Sandbox.Instances.{i}.Stats.Memory.
  .R. (int64_t     ) Cthulhu.Sandbox.Instances.{i}.Stats.Memory.Used
  .R. (int64_t     ) Cthulhu.Sandbox.Instances.{i}.Stats.Memory.Free
  .R. (int64_t     ) Cthulhu.Sandbox.Instances.{i}.Stats.Memory.Total
  ... (Object      ) Cthulhu.Sandbox.Instances.{i}.UtsNS.
  .RW (bool        ) Cthulhu.Sandbox.Instances.{i}.UtsNS.Enable
  .RW (cstring_t   ) Cthulhu.Sandbox.Instances.{i}.UtsNS.Hostname


Check Global Execution Environment and configuration:

  $ R "${S} && check_ee_status --ee"
  1
  Up


Check internal Cthulhu.Config datamodel:

  $ R "${S} && check_cthulhu_config"
  /lcm/rlyeh/images
  /usr/*/cthulhu-lxc/cthulhu-lxc.so (glob)
  1


Cleanup test environment:

  $ R "rm -f /tmp/script_functions.sh"
