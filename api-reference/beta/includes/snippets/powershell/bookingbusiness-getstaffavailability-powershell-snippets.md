---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	StaffIds = @(
		"311a5454-08b2-4560-ba1c-f715e938cb79"
	)
	StartDateTime = @{
		DateTime = "2022-01-25T00:00:00"
		TimeZone = "India Standard Time"
	}
	EndDateTime = @{
		DateTime = "2022-01-26T17:00:00"
		TimeZone = "Pacific Standard Time"
	}
}

Get-MgBookingBusinessStaffAvailability -BookingBusinessId $bookingBusinessId -BodyParameter $params

```