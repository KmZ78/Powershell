<#
CREATION UTILISATEUR AUTOMATIQUEMENT A PARTIR D'UN TABLEAU
#>
$ouCORP ="OU=CORP,DC=formation,DC=lab"
# Tableau contenant les informations d'un utilisateur
$tabUser = "jean","Kaisse","Commerce","Responsable Commercial","0102032201","manager"

# IDENTIFICATION DES PARAMETRES TABLEAU

$prenom = $tabUser[0]
$nom = $tabUser[1]
$service = $tabUser[2]
$poste = $tabUser[3]
$tel = $tabUser[4]
$fonction = $tabUser[5]

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