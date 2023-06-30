# A script to connect/disconnect any bluetooth device on Windows

1. Download the .ps1 script
2. Install [BluetoothCLTools](http://bluetoothinstaller.com/bluetooth-command-line-tools/) (say yes when asked to add tools dir to path) [ALT Link](https://web.archive.org/web/20230616235351/https://bluetoothinstaller.com/bluetooth-command-line-tools)
3. Run `btdiscovery` in command line to get the MAC address of your device
4. Paste the value replacing the `$deviceAddress` variable
5. Double click to run.

# So how does it work?

Win10 automatically disconnects BT device after all services the device offers are disabled.

This script simply disables services offered by selected BT device.

Same on connect.



# It doesn't work!

By default it's setup to remove those commonly used by headphones.

If you have a different device, you can check its services by running `btdiscovery -b "yourDeviceAddress" -s` 

Then you'll have to replace them on the script where every `btcom` command is at.

Sometimes this doesn't show every service, so you can also check by going to control panel -> hardware and sound -> devices and printers -> right click, properties -> services

Then you'll have to correlate these services with the ones listed on [this pdf](https://btprodspecificationrefs.blob.core.windows.net/assigned-numbers/Assigned%20Number%20Types/Assigned_Numbers.pdf) and replace them on the script.

# Credit where it's due:

[This guy on superuser!](https://superuser.com/a/1427536)