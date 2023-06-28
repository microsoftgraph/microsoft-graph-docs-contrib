---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.managedMobileApp"
	mobileAppIdentifier = @{
		"@odata.type" = "microsoft.graph.androidMobileAppIdentifier"
		packageId = "Package Id value"
	}
	version = "Version value"
}

Update-MgDeviceAppMgtiOSManagedAppProtectionApp -IosManagedAppProtectionId $iosManagedAppProtectionId -ManagedMobileAppId $managedMobileAppId -BodyParameter $params

```