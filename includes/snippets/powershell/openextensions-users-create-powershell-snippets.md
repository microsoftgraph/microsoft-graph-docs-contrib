---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	"@odata.type" = "microsoft.graph.openTypeExtension"
	extensionName = "com.contoso.roamingSettings"
	theme = "dark"
	color = "purple"
	lang = "Japanese"
}

# A UPN can also be used as -UserId.
New-MgUserExtension -UserId $userId -BodyParameter $params

```