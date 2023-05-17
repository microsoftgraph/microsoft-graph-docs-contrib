---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	workingHours = @(
		@{
			"@odata.type" = "#microsoft.graph.bookingWorkHours"
			"day@odata.type" = "#microsoft.graph.dayOfWeek"
			day = "monday"
			"timeSlots@odata.type" = "#Collection(microsoft.graph.bookingWorkTimeSlot)"
			timeSlots = @(
			)
		}
		@{
			"@odata.type" = "#microsoft.graph.bookingWorkHours"
			"day@odata.type" = "#microsoft.graph.dayOfWeek"
			day = "tuesday"
			"timeSlots@odata.type" = "#Collection(microsoft.graph.bookingWorkTimeSlot)"
			timeSlots = @(
				@{
					"@odata.type" = "#microsoft.graph.bookingWorkTimeSlot"
					end = "17:00:00.0000000"
					start = "08:00:00.0000000"
				}
			)
		}
		@{
			"@odata.type" = "#microsoft.graph.bookingWorkHours"
			"day@odata.type" = "#microsoft.graph.dayOfWeek"
			day = "wednesday"
			"timeSlots@odata.type" = "#Collection(microsoft.graph.bookingWorkTimeSlot)"
			timeSlots = @(
				@{
					"@odata.type" = "#microsoft.graph.bookingWorkTimeSlot"
					end = "17:00:00.0000000"
					start = "08:00:00.0000000"
				}
			)
		}
		@{
			"@odata.type" = "#microsoft.graph.bookingWorkHours"
			"day@odata.type" = "#microsoft.graph.dayOfWeek"
			day = "thursday"
			"timeSlots@odata.type" = "#Collection(microsoft.graph.bookingWorkTimeSlot)"
			timeSlots = @(
				@{
					"@odata.type" = "#microsoft.graph.bookingWorkTimeSlot"
					end = "17:00:00.0000000"
					start = "08:00:00.0000000"
				}
			)
		}
		@{
			"@odata.type" = "#microsoft.graph.bookingWorkHours"
			"day@odata.type" = "#microsoft.graph.dayOfWeek"
			day = "friday"
			"timeSlots@odata.type" = "#Collection(microsoft.graph.bookingWorkTimeSlot)"
			timeSlots = @(
				@{
					"@odata.type" = "#microsoft.graph.bookingWorkTimeSlot"
					end = "17:00:00.0000000"
					start = "08:00:00.0000000"
				}
			)
		}
	)
}

Update-MgBookingBusinessStaffMember -BookingBusinessId $bookingBusinessId -BookingStaffMemberId $bookingStaffMemberId -BodyParameter $params

```