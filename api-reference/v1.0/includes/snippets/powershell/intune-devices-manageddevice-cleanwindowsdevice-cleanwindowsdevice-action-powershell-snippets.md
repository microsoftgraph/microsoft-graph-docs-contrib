---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	keepUserData = $true
}

Invoke-MgCleanDeviceManagementManagedDeviceWindowsDevice -ManagedDeviceId $managedDeviceId -BodyParameter $params

```