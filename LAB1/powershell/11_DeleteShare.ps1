# удаление режима разделяемого доступа для каталога
# с заданным именем
Get-WmiObject Win32_Share -Filter "Name = 'NewShare'" |
    ForEach-Object {
        $code = $_.Delete()
        if ($code -eq 0) {
            "Режим разделяемого доступа для каталога $($_.Path) удалён."
        } else {
            "Ошибка удаления ресурса. Код: $code"
        }
    }
