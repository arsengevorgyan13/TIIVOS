#  вывод информации о назначенном часовом поясе
Get-WmiObject Win32_TimeZone |
    Format-List Caption, StandardName, DaylightName, `
                Bias, StandardBias, DaylightBias
