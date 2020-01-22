<#
CREATION UTILISATEUR EN MASSE ....
#>
$ouCORP ="OU=CORP,DC=formation,DC=lab"
# Nouveaux utilisateurs fichiers dans fichier "UtilisateursAD.csv"
$fileUSER = "C:\Users\Administrateur.WIN-PU9NSQGTENF\Documents\User.csv"
# Ouverture fichier CSV
$tabUSER = Import-Csv -Path $fileUSER -Delimiter ","
# BOucle de traitement ligne par ligne / Utilisateur par utilisateur
ForEach( $newUSER in $tabUSER)
{
# IDENTIFICATION DES PARAMETRES TABLEAU

$prenom = $newUSER.prenom
$nom = $newUSER.nom
$service = $newUSER.service
$poste = $newUSER.poste
$tel = $newUSER.tel
$fonction = $newUSER.fonction

# CREATION VARIABLES UTILISATEUR

$nomUser = $prenom+" "+$nom
$loginUser = $prenom[0]+$nom
$mailUser = $prenom+"."+$nom

New-ADUser -Name $nomUser -SamAccountName $loginUser `
-Path "OU=$service,$ouCORP" -GivenName $prenom `
-Surname $nom -DisplayName $nomUser `
-UserPrincipalName "$loginUser@formation.lab" -EmailAddress "$mailUser@formation.com" `
-OfficePhone $tel -Description $poste -Title $fonction `
-AccountPassword (ConvertTo-SecureString -AsPlainText "Azerty00" -Force) `
-ChangePasswordAtLogon $true -Enabled $true

Write-Host "L'utilisateur $nomUser a été créer dans l'OU $service"
Start-Sleep -Seconds 2
}