---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	isEnabled = $false
}

# A UPN can also be used as -UserId.
Update-MgBetaUserSettingContactMergeSuggestion -UserId $userId -BodyParameter $params

```