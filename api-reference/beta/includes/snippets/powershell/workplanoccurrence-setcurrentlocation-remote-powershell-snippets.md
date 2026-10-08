---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	updateScope = "currentSegment"
	workLocationType = "remote"
}

# A UPN can also be used as -UserId.
Set-MgBetaUserSettingWorkHourAndLocationOccurrenceCurrentLocation -UserId $userId -BodyParameter $params

```