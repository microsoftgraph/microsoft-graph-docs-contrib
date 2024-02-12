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
	virtualAppointmentSmsType = "confirmation"
}

# A UPN can also be used as -UserId.
Send-MgBetaUserOnlineMeetingVirtualAppointmentSm -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

```