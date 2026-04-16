---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	maxSharedWorkLocationDetails = "approximate"
}

# A UPN can also be used as -UserId.
Update-MgUserSettingWorkHourAndLocation -UserId $userId -BodyParameter $params

```