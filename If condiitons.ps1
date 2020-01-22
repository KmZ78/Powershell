<#
Structure de controle : IF THEN ELSE
if (condition)
    {
        Instructions si condition vraie
    }
    else {
        Instructions si condition fausse
    }
    #>

    # Verifier qu'un texte commence par Aa
    $texte = Read-host "Taper un texte commencant par Aa"
    $texteMaj = $texte.ToUpper()
    if ($texteMaj[0] -eq "A") {
        Write-Host "Le texte commence par Aa"
    }
    elseif ($texteMaj[0] -eq "B"){
        Write-Host "Le texte commence par <B> ou <b>"
    }
    
    else {
        Write-Host "Le texte DOIT commence par aA"
    }