---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	updateScope = "currentDay"
	workLocationType = "office"
	placeId = "12345678-1234-1234-1234-123456789012"
}

# A UPN can also be used as -UserId.
Set-MgBetaUserSettingWorkHourAndLocationOccurrenceCurrentLocation -UserId $userId -BodyParameter $params

```