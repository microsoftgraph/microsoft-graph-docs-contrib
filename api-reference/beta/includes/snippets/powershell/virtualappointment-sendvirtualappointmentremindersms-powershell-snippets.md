---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	attendees = @(
		@{
			phoneNumber = "+13129224122"
			timeZone = "Pacific Standard Time"
		}
		@{
			phoneNumber = "+1242421412"
			timeZone = "Eastern Standard Time"
		}
	)
	remindBeforeTimeInMinutesType = "mins15"
}

# A UPN can also be used as -UserId.
Send-MgBetaUserOnlineMeetingVirtualAppointmentReminderSm -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

```