---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.bookingService"
	defaultDuration = "PT30M"
}

Update-MgBookingBusinessService -BookingBusinessId $bookingBusinessId -BookingServiceId $bookingServiceId -BodyParameter $params

```