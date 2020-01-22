<# Gestion des collections
Get-ChildItem - Get-Process - Get-Service
#>

# Liste des process

Get-Process | ForEach-Object { $_.Name }

# $_ DESIGNE L'ITEM COURANT

Get-Process | Where-Object {$_.id -ge 1500 } | ForEach-Object { $_.Name}

Get-Process | Where-Object {$_.id -ge 1500 } | Select-Object -Property Id,Name

