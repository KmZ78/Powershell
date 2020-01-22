<# Gestion des finctions#>
# Fonction Simple

function MsgBOX {
    $WsShell = New-Object -ComObject Wscript.Shell
    $WsShell.PopUp('Message', 0, 'Titre')
}

function MsgBOX {
    param (
        [String]$Titre, [String]$Message
    )
    $WsShell = New-Object -ComObject Wscript.Shell
    $WsShell.PopUp($Titre, 0, $Message)
}

MsgBOX Titre "Coucou" message "Message de powerShell"


