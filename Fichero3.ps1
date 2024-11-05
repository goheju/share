do
{
    Write-Host "1. Mostrar las propiedades básicas del adaptador de red "
    Write-Host "2. Muestrar la configuración de la dirección IP "
    Write-Host "3. Ejecuta y muestra informacion sobre Get-NetIPConfiguration "
    Write-Host "4. Ejcuta Get-NetConnectionProfile "
    Write-Host "5. Muestra la ruta que usan los paquetes  "
    Write-Host "6. Muestra informacion detallada de cada adaptador (Nombre, Estado, Velocidad e identificador VLAN si tuviera) " 
    Write-Host "7. Ejecuta tracert "
    Write-Host "8. Comprueba el estado de los puertos abiertos "
    Write-Host "9. Ejecuta NSLOKKUP y muestra información sobre él mismo "
    Write-Host "10. Comprueba el estado actual de la red "
    Write-Host "11. Ruta usada por los paquetes que muestra nuestra red en el proceso de envio y recepción "
    Write-Host "12. Muestra informacion detallada de cada adaptador (Nombre, Estado, Velocidad etc) "
    Write-Host "13. Realiza un test de los puertos de nuestro sistema "
    Write-Host "14. Obtener la direccion MAC de nuestra interfaz de red. Posibilidad de cambiar la misma "
    Write-Host "15. Salir " 
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
    $web=Read-Host "Introduce la url sobre la que quieras realizar el tracert "
    tracert $web
}
if ($x -eq 8 )
{
    Get-NetTCPConnection | where-object {$_.State -eq 'Listen'}
}
if ($x -eq 9 )
{
    $web=Read-Host "Introduce la url sobre la que quieras realizar  "
    Resolve-DnsName $web
    Write-Host "
    Sirve para encontrar información de servidores para dominios consultando el DNS "
}
if ($x -eq 10 )
{
    Get-NetTCPConnection
}
if ($x -eq 11 )
{
    Get-NetRoute
}
if ($x -eq 12 )
{
    Get-NetAdapter | ft Name, Status, linkspeed, VlanID, InterfaceDescription
}
if ($x -eq 13 )
{
    Test-NetConnection
}
if ($x -eq 14 )
{
    Get-NetAdapter | Select-Object Name, MacAddress
}
if ($x -eq 15 )
{
    Write-Host "Pulsa cualquier boton para continuar"
    $x = 16
}

}while($x -ne 16){
}