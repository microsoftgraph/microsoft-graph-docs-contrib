---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.windowsInformationProtectionAppLockerFile"
	displayName = "Display Name value"
	fileHash = "File Hash value"
	file = [System.Text.Encoding]::ASCII.GetBytes("ZmlsZQ==")
	version = "Version value"
}

Update-MgDeviceAppManagementWindowsInformationProtectionPolicyExemptAppLockerFile -WindowsInformationProtectionPolicyId $windowsInformationProtectionPolicyId -WindowsInformationProtectionAppLockerFileId $windowsInformationProtectionAppLockerFileId -BodyParameter $params

```