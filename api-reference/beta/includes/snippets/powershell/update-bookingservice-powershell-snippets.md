---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.bookingService"
	defaultDuration = "PT30M"
}

Update-MgBetaBookingBusinessService -BookingBusinessId $bookingBusinessId -BookingServiceId $bookingServiceId -BodyParameter $params

```