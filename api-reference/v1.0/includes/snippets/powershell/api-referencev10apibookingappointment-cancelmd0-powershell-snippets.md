---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	cancellationMessage = "Your appointment has been successfully cancelled. Please call us again."
}

Stop-MgBookingBusinessAppointment -BookingBusinessId $bookingBusinessId -BookingAppointmentId $bookingAppointmentId -BodyParameter $params

```