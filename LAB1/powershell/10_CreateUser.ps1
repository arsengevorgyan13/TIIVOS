# создание нового пользователя ОС в заданной группе
$computer = $env:COMPUTERNAME
$strUser  = "XUser"
$strGroup = "Users"     # заданная группа пользователей
$objComputer = [ADSI]"WinNT://$computer"
$objUser = $objComputer.Create("user", $strUser)
$objUser.SetPassword("P@ssw0rd_2026")
$objUser.SetInfo()
"Пользователь '$strUser' создан на компьютере $computer."
$objGroup = [ADSI]"WinNT://$computer/$strGroup,group"
$objGroup.Add("WinNT://$computer/$strUser")
"Пользователь '$strUser' добавлен в группу '$strGroup'."
