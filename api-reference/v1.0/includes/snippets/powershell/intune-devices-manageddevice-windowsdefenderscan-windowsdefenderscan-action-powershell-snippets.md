---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	quickScan = $true
}

Invoke-MgScanDeviceManagementManagedDeviceWindowsDefender -ManagedDeviceId $managedDeviceId -BodyParameter $params

```