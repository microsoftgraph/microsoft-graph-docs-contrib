---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

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
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"day": "monday",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
		"timeSlots":  []Object {
		}
	}
	msgraphsdk.NewBookingWorkHours(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"day": "tuesday",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
		"timeSlots":  []Object {
		}
	}
	msgraphsdk.NewBookingWorkHours(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"day": "wednesday",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
		"timeSlots":  []Object {
		}
	}
	msgraphsdk.NewBookingWorkHours(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"day": "thursday",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
		"timeSlots":  []Object {
		}
	}
	msgraphsdk.NewBookingWorkHours(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingWorkHours",
		"day@odata.type": "#microsoft.graph.dayOfWeek",
		"day": "friday",
		"timeSlots@odata.type": "#Collection(microsoft.graph.bookingWorkTimeSlot)",
		"timeSlots":  []Object {
		}
	}
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.bookingStaffMember",
	"role@odata.type": "#microsoft.graph.bookingStaffRole",
	"workingHours@odata.type": "#Collection(microsoft.graph.bookingWorkHours)",
}
options := &msgraphsdk.StaffMembersRequestBuilderPostOptions{
	Body: requestBody,
}
bookingBusinessId := "bookingBusiness-id"
result, err := graphClient.BookingBusinessesById(&bookingBusinessId).StaffMembers().Post(options)


```