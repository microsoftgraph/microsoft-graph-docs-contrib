---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	theme = "light"
	color = "yellow"
	lang = "Swahili"
}

# A UPN can also be used as -UserId.
Update-MgUserExtension -UserId $userId -ExtensionId $extensionId -BodyParameter $params

```