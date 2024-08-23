---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	userPrincipalName = "User Principal Name value"
	addressableUserName = "Addressable User Name value"
}

Set-MgDeviceManagementWindowsAutopilotDeviceIdentityUserToDevice -WindowsAutopilotDeviceIdentityId $windowsAutopilotDeviceIdentityId -BodyParameter $params

```