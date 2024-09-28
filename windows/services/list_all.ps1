# Get running services with their process IDs
$services = Get-Service | Where-Object {$_.Status -eq 'Running'} | Select-Object Name, Id

# Get listening ports and associated PIDs
$connections = netstat -ano | Select-String -Pattern "LISTENING"

# Combine the data into readable output
foreach ($service in $services) {
    $matchingPorts = $connections | Where-Object { $_ -match " $($service.Id)$" }
    if ($matchingPorts) {
        Write-Output "Service: $($service.Name) - Ports: $($matchingPorts -join ', ')"
    }
}
