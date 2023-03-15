---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	DisplayName = "Adele"
	EmailAddress = "adele@relecloud.com"
}

Update-MgBookingBusinessCustomer -BookingBusinessId $bookingBusinessId -BookingCustomerId $bookingCustomerId -BodyParameter $params

```