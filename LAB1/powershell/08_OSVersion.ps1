# вывод версии Windows, установленной на компьютере
Get-WmiObject Win32_OperatingSystem |
    Format-List Caption, Version, BuildNumber, CSDVersion, `
                OSArchitecture, WindowsDirectory
