---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	userPrincipalName = "User Principal Name value"
	addressableUserName = "Addressable User Name value"
	groupTag = "Group Tag value"
	displayName = "Display Name value"
}

Update-MgDeviceManagementWindowsAutopilotDeviceIdentityDeviceProperty -WindowsAutopilotDeviceIdentityId $windowsAutopilotDeviceIdentityId -BodyParameter $params

```