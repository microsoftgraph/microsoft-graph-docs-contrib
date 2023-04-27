---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	isEnabled = $false
}

# A UPN can also be used as -UserId.
Update-MgUserSettingContactMergeSuggestion -UserId $userId -BodyParameter $params

```