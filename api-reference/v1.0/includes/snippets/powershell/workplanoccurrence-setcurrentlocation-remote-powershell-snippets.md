---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	updateScope = "currentSegment"
	workLocationType = "remote"
}

# A UPN can also be used as -UserId.
Set-MgUserSettingWorkHourAndLocationOccurrenceCurrentLocation -UserId $userId -BodyParameter $params

```