---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	apps = @(
		@{
			"@odata.type" = "#microsoft.graph.managedMobileApp"
			mobileAppIdentifier = @{
				"@odata.type" = "microsoft.graph.androidMobileAppIdentifier"
				packageId = "Package Id value"
			}
			id = "0a129715-9715-0a12-1597-120a1597120a"
			version = "Version value"
		}
	)
	appGroupType = "allCoreMicrosoftApps"
}

Invoke-MgTargetDeviceAppManagementManagedAppPolicyApp -ManagedAppPolicyId $managedAppPolicyId -BodyParameter $params

```