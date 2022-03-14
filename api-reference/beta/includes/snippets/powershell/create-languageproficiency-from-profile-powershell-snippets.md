---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	DisplayName = "Norwegian Bokmål"
	Tag = "nb-NO"
	Spoken = "nativeOrBilingual"
	Written = "nativeOrBilingual"
	Reading = "nativeOrBilingual"
}

# A UPN can also be used as -UserId.
New-MgUserProfileLanguage -UserId $userId -BodyParameter $params

```