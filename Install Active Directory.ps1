<#
CREATION FORET - DOMAINE RACINE SUR srv-dc1.formation.lab
#>

# AJOUTER LE MODULE ACTIVE DIRECTORY
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# ASSISTANT D'INSTALLATION AD - INSTALLATION DE FORET
Install-ADDSForest `
    -DomainName "formation.lab" `
    -DomainNetbiosName "FORMATION" `
    -CreateDnsDelegation:$false `
    -DomainMode "7" `
    -ForestMode "7" `
    -InstallDns:$true `
    -DatabasePath "C:\Windows\NTDS" `
    -LogPath "C:\Windows\NTDS" `
    -SysvolPath "C:\Windows\SYSVOL" `
    -NoRebootOnCompletion:$false `
    -Force:$true #-WhatIf `
    
# Mot de passe DSRM demandé pendant l'installation !
# sinon ajouter
#   -SafeModeAdministratorPassword(ConvertTo-SecureString -AsPlainText "Admin123!")

