---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	"@odata.type" = "microsoft.graph.openTypeExtension"
	ExtensionName = "com.contoso.roamingSettings"
	Theme = "dark"
	Color = "purple"
	Lang = "Japanese"
}

# A UPN can also be used as -UserId.
New-MgUserExtension -UserId $userId -BodyParameter $params

```