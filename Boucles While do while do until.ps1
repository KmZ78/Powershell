<#
Boucle while : While - Do While - Do Until
#>

<#
While ( condition_vraie )
{
    Instructions de boucles
    Incrementer un item faisant partie de la condition 
}
#>
$somme = 0
$i = 0
while ($i -le 10) {
    $somme = $somme + $i
    $i++
}
Write-Host "WHILE : La somme vaut :" $somme

<# 
Do {
    Instructions de boucke
    Incrementation
}
until (condition_fausse)
#>
do {
    $somme = $somme + $i
    $i++
}
until ( $i -gt 10 )
Write-Host "DO UNTIL : La somme vaut"