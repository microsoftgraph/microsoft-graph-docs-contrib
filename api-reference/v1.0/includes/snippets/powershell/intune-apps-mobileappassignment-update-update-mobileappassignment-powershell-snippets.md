---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.mobileAppAssignment"
	intent = "required"
	target = @{
		"@odata.type" = "microsoft.graph.allLicensedUsersAssignmentTarget"
	}
	settings = @{
		"@odata.type" = "microsoft.graph.windowsUniversalAppXAppAssignmentSettings"
		useDeviceContext = $true
	}
}

Update-MgDeviceAppMgtMobileAppAssignment -MobileAppId $mobileAppId -MobileAppAssignmentId $mobileAppAssignmentId -BodyParameter $params

```