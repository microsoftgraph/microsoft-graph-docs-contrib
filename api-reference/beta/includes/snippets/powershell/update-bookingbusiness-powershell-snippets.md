---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

$params = @{
	email = "admin@fabrikam.com"
	schedulingPolicy = @{
		timeSlotInterval = "PT60M"
		minimumLeadTime = "P1D"
		maximumAdvance = "P30D"
		sendConfirmationsToOwner = $true
		allowStaffSelection = $true
	}
}

Update-MgBetaBookingBusiness -BookingBusinessId $bookingBusinessId -BodyParameter $params

```