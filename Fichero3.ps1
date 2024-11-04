do
{
    Write-Host "1. Mostrar las propiedades básicas del adaptador de red "
    Write-Host "2. Muestrar la configuración de la dirección IP "
    Write-Host "3. Ejecuta y muestra informacion sobre Get-NetIPConfiguration "
    Write-Host "4. Ejcuta Get-NetConnectionProfile "
    Write-Host "5. Muestra la ruta que usan los paquetes  "
    Write-Host "6. Muestra informacion detallada de cada adaptador (Nombre, Estado, Velocidad e identificador VLAN si tuviera) " 

    Write-Host "7. Salir " 
    $x=Read-Host "Seleccionar opcion"
if ($x -eq 1 )
{
    Get-Netadapter
}
if ($x -eq 2 )
{
    Get-NetIPAddress
}
if ($x -eq 3 )
{
    Get-NetIPConfiguration
    Write-Host "Muestra la configuracion actual de la red, incluyendo direcciones IP,"
    Write-Host "puertas de enlace y servidores DNS."
    Write-Host " "
}
if ($x -eq 4 )
{
    Get-NetConnectionProfile
}
if ($x -eq 5 )
{
    $web=Read-Host "Introduce la direccion sobre la que quieras realizar la consulta "
    Test-NetConnection -TraceRoute -ComputerName $web 
}
if ($x -eq 6 )
{
    Get-NetAdapter | Select-Object Name, Status, linkspeed, VlanID
}
if ($x -eq 7 )
{
    Write-Host "Pulsa cualquier boton para continuar"
    $x = 8
}

}while($x -ne 8){
}