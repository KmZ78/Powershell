<#
STRUCTURE DE CONTROLE : switch
Switch (item_a_test) {
    valeur1 {Instructions si valeur1}
    valeur2 {Instructions si valeur2}
    valeur3 {Instructions si valeur3}
}
#>

# Verifier qu'un texte commence par Aa
    $texte = Read-host "Taper un texte commencant par Aa"
    $texteMaj = $texte.ToUpper()
switch ($texteMaj[0]) {
    A { Write-Host "Le texte commence par <A> ou <a>"}
    B  { Write-Host "Le texte commence par <B> ou <b>"}  
    Default { Write-Host "Erreur : Le texte doit commencer par <A> ou <B>"}
}