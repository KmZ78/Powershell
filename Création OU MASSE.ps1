
 <#
CREATION d'OU EN MASSE
#>

# TABLEAU CONTENANT LES NOMS DES OU

$tabOU = "Administratif","Commerce","R&D","Support", "Groupes"

#CREATION OU 

foreach($NomOU in $tabOU)

{
    New-ADOrganizationalUnit -Name $NomOU -Path "OU=CORP,DC=formation,DC=lab" -Description "OU $NomOU societe FORMATION" -ProtectedFromAccidentalDeletion $true
    Write-Host "Creation de l'OU $NomOU terminee"
    Start-Sleep -Seconds 2
}