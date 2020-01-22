<#
BOUCLES : for ET forEach
#>
<#
for ( valeur_initiale;valeur_arret;increment )
#>
# Somme des 10 premiers nombres de 0 à 10 (55)
$somme = 0
for ($i = 0; $i -le 10; $i++) {
    $somme = $somme + $i
}
Write-Host "La somme vaut : "$somme

<#
forEach ( Item in Collection )
{ Instructions de boucle }
#>
$somme = 0
$i = 0
foreach ( $i in 1..10)
{
    $somme = $somme + $i
}
Write-Host " La somme vaut" $somme