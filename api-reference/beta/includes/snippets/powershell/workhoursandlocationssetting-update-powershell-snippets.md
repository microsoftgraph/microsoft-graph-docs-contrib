---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	maxSharedWorkLocationDetails = "approximate"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserSettingWorkHourAndLocation -UserId $userId -BodyParameter $params

```