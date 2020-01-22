<#
CREATION d'OU
#>

#ATTRIBUT OBLIGATOIRES : -Name ET -Path
#ATTRIBUT RECOMMANDES : -ProtectedFromAccidentalDeletion

New-ADOrganizationalUnit -Name "TEST" -Path "DC=formation,DC=lab" -ProtectedFromAccidentalDeletion $true

#RETIRER LA PROTECTION

Set-ADOrganizationalUnit -Identity "OU=TEST,DC=formation,DC=lab" -ProtectedFromAccidentalDeletion $false

#SUPPRIMER L'OU

Remove-ADOrganizationalUnit -Identity "OU=TEST,DC=formation,DC=lab"

#CREATION OU CORPORATE

New-ADOrganizationalUnit -Name "CORP" -Path "DC=formation,DC=lab" -Description "OU Corporate societe FORMATION" -ProtectedFromAccidentalDeletion $true