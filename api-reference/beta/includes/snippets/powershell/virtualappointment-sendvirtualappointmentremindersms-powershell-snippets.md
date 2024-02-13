---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	phoneNumbers = @(
		"+13129224122"
		"+1242421412"
	)
	remindBeforeTimeInMinutesType = "mins15"
}

# A UPN can also be used as -UserId.
Send-MgBetaUserOnlineMeetingVirtualAppointmentReminderSm -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

```