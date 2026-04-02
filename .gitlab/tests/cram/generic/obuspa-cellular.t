Create R alias:

  $ alias R="${CRAM_REMOTE_COMMAND:-}"

If test is running on a Mozart, Turris, OSPv1 or Haze, lets skip the test as there is no Cellular support:
  $ if echo "$CI_JOB_NAME" | grep -q -E "(Mozart|Turris|Haze|HDK-3)"; then exit 80; fi

Check that obuspa has expected datamodel available for cellular:

  $ R "obuspa -f /etc/obuspa.db -c dump datamodel | grep '^Device.Cellular.'"

Check that USP stack is handling the reconnection scenario properly PCF-1198/PPW-65 by restarting obuspa:

  $ R "service obuspa restart" ; sleep 20

Check that obuspa provides the same datamodel for cellular again:

  $ R "obuspa -f /etc/obuspa.db -c dump datamodel | grep '^Device.Cellular.'"
