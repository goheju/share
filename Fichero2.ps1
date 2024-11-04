do
{
    Write-Host "1. Mostrar version de powershell "
    Write-Host "2. Obtener información sobre el bosque de AD DS "
    Write-Host "3. Obtener información sobre el dominio de AD DS "
    Write-Host "4. Indica para que usaría el comand Get-ADUser jioller "
    Write-Host "5. Dar de alta a un usuario " 
    Write-Host "6. Salir " 
    $x=Read-Host "Seleccionar opcion"
if ($x -eq 1 )
{
    Get-Host
}
if ($x -eq 2)
{
    Get-ADForest
}
if ($x -eq 3)
{
    Get-ADDomain
}
if ($x -eq 4)
{
    Write-Host "
    Sirve para ver los detalles del usuario 'jioller'
    "
    Write-Host "Para otro usuario concreto introduce: "
    $usu1=Read-Host "Nombre de usuario"
}
if ($x -eq 5)
{
    $usu=Read-Host "Nombre de usuario"
    $pss=Read-Host "Contraseña"
    New-ADUser -Name $usu -AccountPassword $pss -SamAccountName $usu `    -enabled $true
}
if ($x -eq 6)
{
    Write-Host "Continuar..."
    $x = 7
}


}while($x  -ne 7){
}