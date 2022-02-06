# Doodle Provisioning to support QGCS RSSI access
These files set up the JSON-RPC system on the doodle radio to support RSSI queries from compatible versions of QGCS. 
QGCS will query the radio using JSON-RPC http requests with username doodle and password doodle. The radio will return a station dump which will be parsed and used to display RSSI information in the QGCS UI. 

By default, the Doodle radios only allow JSON-RPC access using the root account. Since we do not wish to have to store the Doodle root account password within another application, this solution creates a doodle/doodle account with remote access.

## Windows Installation
To install, ensure that the Doodle radio is powered on, connected to a LAN and the ip address is known.

1. Download these files in this repo, using either `git clone https://github.com/horiz31/doodle_rssi.git` or download and extract a zip file from https://github.com/horiz31/doodle_rssi/archive/refs/heads/master.zip  
2. Change to the directory to where you downloaded the files and open a windows command prompt.  
3. Then, run `config_doodle 172.20.x.y` using the IP address of the doodle you are configuring. This will copy the files to the Doodle and restart the rpcd service.  

## Linux Installation

To install, ensure that the Doodle radio is powered on, connected to a LAN and the ip address is known.
1. Download these files in this repo, using either `git clone https://github.com/horiz31/doodle_rssi.git` or download and extract a zip file from https://github.com/horiz31/doodle_rssi/archive/refs/heads/master.zip  
2. open a terminal window where the files were downloaded and run `make IP=172.20.x.y install` using the IP address of the doodle you are configuring. This will copy the files to the Doodle and restart the rpcd service

### Files

  * `/etc/config/rpcd` - user profile which includes the doodle/doodle account
  * `/usr/share/rpcd/acl.d/lessuperuser.json`	 - permissions file for the lesssuperuser profile created above


## References

[Doodle JSON-RPC](https://doodlelabs.com/wp-content/uploads/Remote-Management-Guide-for-Smart-Radio-V1020.pdf)

