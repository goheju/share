do{
Write-Host "1. Listado de puertos UDP abiertos. "
Write-Host "2. Deshabilitar elementos de adaptador de red. "
Write-Host "3. Ver los bytes enviados y recibidos por la interfaz wifi "
Write-Host "4. Obtener dirección IP del adaptador wifi. "
Write-Host "5. Ver la tabla de enrutamiento de IPv4. "
Write-Host "6. Realizar un apagado programado de otra máquina "
Write-Host "7. Crear una barra de progreso "
if ($x -eq 1 ){

    Get-NetTCPConnection -state Listen
}
if ($x -eq 2 ){

    Disable-NetAdapter -name "Ethernet"
}
if ($x -eq 3 ){

    Get-NetAdapter Ethernet | Select-Object Name, OutboundBytes, InboundBytes
}
if ($x -eq 4 ){

    Get-NetIPAddress -InterfaceAlias Ethernet | Select-Object Name, InterfaceAlias
}
if ($x -eq 5 ){

    Get-NetRoute -AddressFamily IPv4
}
if ($x -eq 6 ){

    $PC = Read-Host "Nombre o Ip de la maquina a conectar "
    $credenciales = Get-Credential
     
}
}
while($x -ne 8){
}
