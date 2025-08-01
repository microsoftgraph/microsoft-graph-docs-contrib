---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	quickScan = $true
}

Invoke-MgScanDeviceManagementManagedDeviceWindowsDefender -ManagedDeviceId $managedDeviceId -BodyParameter $params

```