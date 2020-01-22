<#
COnfiguration Server
    - Adresse IP fixe
    - Configurer le client DNS
    - Desactiver IPv6
    - Configurer un FQDN
    - COnfigurer la réponse au ping
#>

# Identifier les interfaces IP 

Get-NetAdapter
Get-NetIPConfiguration # ipconfig

# Adresse IP fixe
# Désactiver mode client DHCP

Set-NetIPInterface -InterfaceIndex 5 -Dhcp Disabled
New-NetIPAddress -InterfaceIndex 5  -IPAddress 192.168.108.11 -PrefixLength 24 -DefaultGateway 192.168.108.2 ##-WhatIf

# - Configurer le client DNS

Get-DnsClientServerAddress
Set-DnsClientServerAddress -InterfaceIndex 5 -ServerAddresses 127.0.0.1, 192.168.108.11
Get-DnsClientServerAddress 

# - Désactiver IPv6

Get-NetAdapterBinding -Name Ethernet0
Set-NetAdapterBinding -Name Ethernet0 -ComponentID ms_tcpip6 -Enabled $false

# - Configurer un FQDN

Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters -Name "NV Hostname" -Value "srv-dc1"
Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters -Name "NV Domain" -Value "formation.lab"

Enable-NetFirewallRule -DisplayName "Partage de fichiers et d’imprimantes (Demande d’écho - Trafic entrant ICMPv4)"