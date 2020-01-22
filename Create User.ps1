<#
CREATION UTILISATEUR SIMPLE
#>
# ATTRIBUT OBLIGATOIRES : -Name ET -SamAccountName (login)
# ATTRIBUT RECOMMANDES : -Path 
New-ADUser -Name "Jean Neymar" -SamAccountName "jNeymar" -Path "OU=Support,OU=CORP,DC=formation,DC=lab" #-GivenName -Surname -DisplayName -UserPrincipalName -EmailAddress -OfficePhone -Description -Title

#changement DU MOT DE PASSE
Set-ADAccountPassword -Identity "CN= jean Neymar,OU=Support,OU=CORP,DC=formation,DC=lab" -NewPassword(ConvertTo-SecureString -AsPlainText "Azerty00" -Force)

#ACTIVATION UTILISATEUR -CHANGEMENT Mdp a la prochaine connexion
Set-ADUser -Identity "CN= jean Neymar,OU=Support,OU=CORP,DC=formation,DC=lab" -ChangePasswordAtLogon $true -Enabled $true