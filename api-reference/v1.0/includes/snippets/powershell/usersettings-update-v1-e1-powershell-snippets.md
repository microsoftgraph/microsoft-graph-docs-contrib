---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	contributionToContentDiscoveryDisabled = $true
}

# A UPN can also be used as -UserId.
Update-MgUserSetting -UserId $userId -BodyParameter $params

```