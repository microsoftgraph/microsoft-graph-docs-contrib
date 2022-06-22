---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewBookingStaffMember()
colorIndex := int32(1)
requestBody.SetColorIndex(&colorIndex)
displayName := "Dana Swope"
requestBody.SetDisplayName(&displayName)
emailAddress := "danas@contoso.com"
requestBody.SetEmailAddress(&emailAddress)
role := "externalGuest"
requestBody.SetRole(&role)
timeZone := "America/Chicago"
requestBody.SetTimeZone(&timeZone)
useBusinessHours := true
requestBody.SetUseBusinessHours(&useBusinessHours)
requestBody.SetWorkingHours( []BookingWorkHours {
	msgraphsdk.NewBookingWorkHours(),
day := "monday"
	SetDay(&day)
	SetTimeSlots( []BookingWorkTimeSlot {
		msgraphsdk.NewBookingWorkTimeSlot(),
end := "17:00:00.0000000"
		SetEnd(&end)
start := "08:00:00.0000000"
		SetStart(&start)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.bookingWorkTimeSlot",
		}
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
	}
	msgraphsdk.NewBookingWorkHours(),
day := "tuesday"
	SetDay(&day)
	SetTimeSlots( []BookingWorkTimeSlot {
		msgraphsdk.NewBookingWorkTimeSlot(),
end := "17:00:00.0000000"
		SetEnd(&end)
start := "08:00:00.0000000"
		SetStart(&start)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.bookingWorkTimeSlot",
		}
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
	}
	msgraphsdk.NewBookingWorkHours(),
day := "wednesday"
	SetDay(&day)
	SetTimeSlots( []BookingWorkTimeSlot {
		msgraphsdk.NewBookingWorkTimeSlot(),
end := "17:00:00.0000000"
		SetEnd(&end)
start := "08:00:00.0000000"
		SetStart(&start)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.bookingWorkTimeSlot",
		}
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
	}
	msgraphsdk.NewBookingWorkHours(),
day := "thursday"
	SetDay(&day)
	SetTimeSlots( []BookingWorkTimeSlot {
		msgraphsdk.NewBookingWorkTimeSlot(),
end := "17:00:00.0000000"
		SetEnd(&end)
start := "08:00:00.0000000"
		SetStart(&start)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.bookingWorkTimeSlot",
		}
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
	}
	msgraphsdk.NewBookingWorkHours(),
day := "friday"
	SetDay(&day)
	SetTimeSlots( []BookingWorkTimeSlot {
		msgraphsdk.NewBookingWorkTimeSlot(),
end := "17:00:00.0000000"
		SetEnd(&end)
start := "08:00:00.0000000"
		SetStart(&start)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.bookingWorkTimeSlot",
		}
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
	}
}
isEmailNotificationEnabled := false
requestBody.SetIsEmailNotificationEnabled(&isEmailNotificationEnabled)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.bookingStaffMember",
	"role@odata.type": "#microsoft.graph.bookingStaffRole",
	"workingHours@odata.type": "#Collection(microsoft.graph.bookingWorkHours)",
}
bookingBusinessId := "bookingBusiness-id"
result, err := graphClient.BookingBusinessesById(&bookingBusinessId).StaffMembers().Post(requestBody)


```