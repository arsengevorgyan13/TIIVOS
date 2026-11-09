# вывод информации о звуковой карте
Get-WmiObject Win32_SoundDevice |
    Format-List Name, Manufacturer, Description, Status, PNPDeviceID
