$deviceAddress = "00:18:09:7C:65:6F"

# Check if the device is connected
$connected = & btdiscovery -b $deviceAddress -d "%c%" | Select-String "Yes" -Quiet

if ($connected) {
    # Device is connected, disconnect it
    & btcom -b $deviceAddress -r -s110c
    & btcom -b $deviceAddress -r -s110e
    & btcom -b $deviceAddress -r -s111e
    & btcom -b $deviceAddress -r -s110b
    Write-Host "Device disconnected."
}
else {
    # Device is not connected, connect it
    & btcom -b $deviceAddress -c -s110c
    & btcom -b $deviceAddress -c -s110e
    & btcom -b $deviceAddress -c -s111e
    & btcom -b $deviceAddress -c -s110b
    Write-Host "Device connected."
}