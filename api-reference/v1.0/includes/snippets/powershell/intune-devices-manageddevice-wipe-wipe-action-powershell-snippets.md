---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	keepEnrollmentData = $true
	keepUserData = $true
	macOsUnlockCode = "Mac Os Unlock Code value"
	persistEsimDataPlan = $true
}

Clear-MgDeviceManagementManagedDevice -ManagedDeviceId $managedDeviceId -BodyParameter $params

```