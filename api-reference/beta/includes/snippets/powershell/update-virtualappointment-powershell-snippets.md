---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	"@odata.type" = "#microsoft.graph.virtualAppointment"
	id = "0c7fda79-ff00-f57f-37e3-28183b6d09b5"
	settings = @{
		"@odata.type" = "microsoft.graph.virtualAppointmentSettings"
		allowClientToJoinUsingBrowser = "true"
	}
	appointmentClients = @(
		@{
			"@odata.type" = "microsoft.graph.virtualAppointmentUser"
			emailAddress = "gradya@contoso.com"
			displayName = "Grady Archie"
			smsCapablePhoneNumber = "123-456-7890"
		}
	)
	externalAppointmentId = "AAMkADKnAAA="
	externalAppointmentUrl = "https://anyschedulingsystem.com/api/appointments/MkADKnAAA="
	appointmentClientJoinWebUrl = "https://visit.teams.microsoft.com/webrtc-svc/api/route?tid=a796be92-&convId=19:meeting_=True"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserOnlineMeetingVirtualAppointment -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

```