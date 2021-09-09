# Doodle Provisioning to support QGCS RSSI access
These files set up the JSON-RPC system on the doodle radio to support RSSI queries from compatible versions of QGCS. 
QGCS will query the radio using JSON-RPC http requests with username doodle and password doodle. The radio will return a station dump which will be parsed and used to display RSSI information in the QGCS UI. 

By default, the Doodle radios only allow JSON-RPC access using the root account. Since we do not wish to have to store the Doodle root account password without another application, this solution creates a doodle/doodle account with limited access to only the ```iwinfo assoclist``` command, which is thought to be harmless. 

## Installation

To install, ensure that the Doodle radio is powered on, connected to a LAN and the ip address is known.

Then, issue a `make IP=172.20.x.y install` to copy the files to the Doodle and restart the rpcd service


### Files

  * `/etc/config/rpcd` - user profile which includes the doodle/doodle account
  * `/usr/share/rpcd/acl.d/lessuperuser.json`	 - permissions file for the lesssuperuser profile created above, allows limited iwinfo access.


## References

[Doodle JSON-RPC](https://doodlelabs.com/wp-content/uploads/Remote-Management-Guide-for-Smart-Radio-V1020.pdf)

