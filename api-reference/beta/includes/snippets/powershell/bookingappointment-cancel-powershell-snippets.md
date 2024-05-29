---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

$params = @{
	cancellationMessage = "Your appointment has been successfully cancelled. Please call us again."
}

Stop-MgBetaBookingBusinessAppointment -BookingBusinessId $bookingBusinessId -BookingAppointmentId $bookingAppointmentId -BodyParameter $params

```