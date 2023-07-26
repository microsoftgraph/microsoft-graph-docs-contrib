---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.mobileAppCategory"
	displayName = "Display Name value"
}

Update-MgDeviceAppMgtMobileAppCategory -MobileAppCategoryId $mobileAppCategoryId -BodyParameter $params

```