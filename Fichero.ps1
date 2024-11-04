do
{
    Write-Host "1. Mostrar usuarios del sistema "
    Write-Host "2. Pedir Usuario y Contraseña y darlo de alta en el sistema "
    Write-Host "3. Mostrar procesos en ejecución "
    Write-Host "4. Eliminar un usuario del sistema "
    Write-Host "5. Muestar el historial del sistema "
    Write-Host "6. Mostrar y exportar informacion del equipo " 
    Write-Host "7. Salir " 
    $x=Read-Host "Seleccionar opcion"
if ($x -eq 1 )
{
    Get-LocalUser
}
if ($x -eq 2 )
{
    $usu=Read-Host "Nombre de usuario"
    $pss=Read-Host "Contraseña"
    New-LocalUser$usu -Password $pss
}
if ($x -eq 3 )
{
    Get-process
}
if ($x -eq 4 )
{
    $usurm=Read-Host "Nombre de usuario a eliminar"
    Remove-LocalUser $usurm 
}
if ($x -eq 5 )
{
    Get-History
}
if ($x -eq 6 )
{
    Get-ComputerInfo
    Get-ComputerInfo|Out-File c:\info.txt
}
if ($x -eq 7 )
{
    Write-Host "Pulsa cualquier boton para continuar"
    $x = 8
}

}while($x -ne 8){
}