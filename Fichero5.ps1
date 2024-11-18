﻿do{
Write-Host "1. Muestra los procesos del sistema. "
Write-Host "2. Detener un proceso concreto. "
Write-Host "3. Ver los bytes enviados y recibidos por la interfaz wifi "
Write-Host "4. Obtener dirección IP del adaptador wifi. "
Write-Host "5. Ver la tabla de enrutamiento de IPv4. "
Write-Host "6. Realizar un apagado programado de otra máquina "
Write-Host "7. Crear una barra de progreso "
Write-Host "8. Salir "
$x=Read-Host "Seleccione una acción: "
if ($x -eq 1 ){

    Get-Process
}
if ($x -eq 2 ){
    
    Start-Process  "notepad"
    $pro = Read-Host "Introduce el nombre del proceso que quieras detener"
    Stop-Process -Name $pro
    
     $progress = 0
            $durationInSeconds = 2  
            while ($progress -lt 100) {
                $progress++
                Write-Progress -PercentComplete $progress -Status "Processing" -Activity "$progress de 100"
                Start-Sleep -milliseconds 5
            }
            Write-Host "Proceso completado."
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
    Invoke-Command -ComputerName $PC -Credential $credenciales -ScriptBlock{
        Start-Process shutdown.exe -ArgumentList "/s /t 0" -NoNewWindow
    }
     
}
if ($x -eq 7 ){

     $progress = 0
            $durationInSeconds = 100
            $interval = $durationInSeconds / 10  
            while ($progress -lt 100) {
                $progress++
                Write-Progress -PercentComplete $progress -Status "Processing" -Activity "$progress de 100"
                Start-Sleep -milliseconds $interval
            }
            Write-Host "Proceso completado."
}
}
while($x -ne 8){
}