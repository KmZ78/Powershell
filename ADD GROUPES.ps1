<#
CREATION DE GROUPE 
#>
$ouCORP ="OU=CORP,DC=formation,DC=lab"
# ATTRIBUTS OBLIGATOIRE = Name et -SamAccountName
# ATTRIBUTS RECOMMANDES = - Path ET -GroupScope LOCAL/GLOBAL/UNIVERSEL
# ET -GroupCategory SECURITY/DISTRIBUTION

New-ADGroup -Name "Support" -SamAccountName "GS_Support" `
-GroupScope "GLOBAL" -GroupCategory "SECURITY" `
-Path "OU=Groupes,$ouCORP"

#Ajouter des utilisateurs à un groupe
Add-ADGroupMember -Identity "CN=Support,OU=Groupes,$ouCORP" `
-Members "jNeymar,jSarien,gMenvussa,dPrane"