---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.bookingAppointment"
	endDateTime = @{
		"@odata.type" = "#microsoft.graph.dateTimeTimeZone"
		dateTime = "2018-05-06T12:30:00.0000000+00:00"
		timeZone = "UTC"
	}
	startDateTime = @{
		"@odata.type" = "#microsoft.graph.dateTimeTimeZone"
		dateTime = "2018-05-06T12:00:00.0000000+00:00"
		timeZone = "UTC"
	}
}

Update-MgBookingBusinessAppointment -BookingBusinessId $bookingBusinessId -BookingAppointmentId $bookingAppointmentId -BodyParameter $params

```