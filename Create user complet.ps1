<#
CREATION UTILISATEUR COMPLET
#>
# ATTRIBUT OBLIGATOIRES : -Name ET -SamAccountName (login)
# ATTRIBUT RECOMMANDES : -Path 

$ouCORP ="OU=CORP,DC=formation,DC=lab"
New-ADUser -Name "Gerard Menvussa" -SamAccountName "gMenvussa" `
-Path "OU=Support,$ouCORP" -GivenName "Gerard" `
-Surname "Menvussa" -DisplayName "Gerard Menvussa" `
-UserPrincipalName "gMenvussa@formation.lab" -EmailAddress "gMenvussa@formation.com" `
-OfficePhone 0102034402 -Description "Membre du support" -Title "employee" `
-AccountPassword (ConvertTo-SecureString -AsPlainText "Azerty00" -Force) `
-ChangePasswordAtLogon $true -Enabled $true

Write-Host "L'utilisateur gérard a été créer dans l'OU Support"