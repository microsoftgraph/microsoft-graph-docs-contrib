---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingStaffMember()
colorIndex := int32(1)
requestBody.SetColorIndex(&colorIndex) 
displayName := "Dana Swope"
requestBody.SetDisplayName(&displayName) 
emailAddress := "danas@contoso.com"
requestBody.SetEmailAddress(&emailAddress) 
role := graphmodels.EXTERNALGUEST_BOOKINGSTAFFROLE 
requestBody.SetRole(&role) 
timeZone := "America/Chicago"
requestBody.SetTimeZone(&timeZone) 
useBusinessHours := true
requestBody.SetUseBusinessHours(&useBusinessHours) 


bookingWorkHours := graphmodels.NewBookingWorkHours()
day := graphmodels.MONDAY_DAYOFWEEK 
bookingWorkHours.SetDay(&day) 


bookingWorkTimeSlot := graphmodels.NewBookingWorkTimeSlot()
end := 17:00:00.0000000
bookingWorkTimeSlot.SetEnd(&end) 
start := 08:00:00.0000000
bookingWorkTimeSlot.SetStart(&start) 

timeSlots := []graphmodels.BookingWorkTimeSlotable {
	bookingWorkTimeSlot,

}
bookingWorkHours.SetTimeSlots(timeSlots)
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.dayOfWeek", 
	"odataType" : "#Collection(microsoft.graph.bookingWorkTimeSlot)", 
}
bookingWorkHours.SetAdditionalData(additionalData)
bookingWorkHours1 := graphmodels.NewBookingWorkHours()
day := graphmodels.TUESDAY_DAYOFWEEK 
bookingWorkHours1.SetDay(&day) 


bookingWorkTimeSlot := graphmodels.NewBookingWorkTimeSlot()
end := 17:00:00.0000000
bookingWorkTimeSlot.SetEnd(&end) 
start := 08:00:00.0000000
bookingWorkTimeSlot.SetStart(&start) 

timeSlots := []graphmodels.BookingWorkTimeSlotable {
	bookingWorkTimeSlot,

}
bookingWorkHours1.SetTimeSlots(timeSlots)
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.dayOfWeek", 
	"odataType" : "#Collection(microsoft.graph.bookingWorkTimeSlot)", 
}
bookingWorkHours1.SetAdditionalData(additionalData)
bookingWorkHours2 := graphmodels.NewBookingWorkHours()
day := graphmodels.WEDNESDAY_DAYOFWEEK 
bookingWorkHours2.SetDay(&day) 


bookingWorkTimeSlot := graphmodels.NewBookingWorkTimeSlot()
end := 17:00:00.0000000
bookingWorkTimeSlot.SetEnd(&end) 
start := 08:00:00.0000000
bookingWorkTimeSlot.SetStart(&start) 

timeSlots := []graphmodels.BookingWorkTimeSlotable {
	bookingWorkTimeSlot,

}
bookingWorkHours2.SetTimeSlots(timeSlots)
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.dayOfWeek", 
	"odataType" : "#Collection(microsoft.graph.bookingWorkTimeSlot)", 
}
bookingWorkHours2.SetAdditionalData(additionalData)
bookingWorkHours3 := graphmodels.NewBookingWorkHours()
day := graphmodels.THURSDAY_DAYOFWEEK 
bookingWorkHours3.SetDay(&day) 


bookingWorkTimeSlot := graphmodels.NewBookingWorkTimeSlot()
end := 17:00:00.0000000
bookingWorkTimeSlot.SetEnd(&end) 
start := 08:00:00.0000000
bookingWorkTimeSlot.SetStart(&start) 

timeSlots := []graphmodels.BookingWorkTimeSlotable {
	bookingWorkTimeSlot,

}
bookingWorkHours3.SetTimeSlots(timeSlots)
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.dayOfWeek", 
	"odataType" : "#Collection(microsoft.graph.bookingWorkTimeSlot)", 
}
bookingWorkHours3.SetAdditionalData(additionalData)
bookingWorkHours4 := graphmodels.NewBookingWorkHours()
day := graphmodels.FRIDAY_DAYOFWEEK 
bookingWorkHours4.SetDay(&day) 


bookingWorkTimeSlot := graphmodels.NewBookingWorkTimeSlot()
end := 17:00:00.0000000
bookingWorkTimeSlot.SetEnd(&end) 
start := 08:00:00.0000000
bookingWorkTimeSlot.SetStart(&start) 

timeSlots := []graphmodels.BookingWorkTimeSlotable {
	bookingWorkTimeSlot,

}
bookingWorkHours4.SetTimeSlots(timeSlots)
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.dayOfWeek", 
	"odataType" : "#Collection(microsoft.graph.bookingWorkTimeSlot)", 
}
bookingWorkHours4.SetAdditionalData(additionalData)

workingHours := []graphmodels.BookingWorkHoursable {
	bookingWorkHours,
	bookingWorkHours1,
	bookingWorkHours2,
	bookingWorkHours3,
	bookingWorkHours4,

}
requestBody.SetWorkingHours(workingHours)
isEmailNotificationEnabled := false
requestBody.SetIsEmailNotificationEnabled(&isEmailNotificationEnabled) 
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.bookingStaffRole", 
	"odataType" : "#Collection(microsoft.graph.bookingWorkHours)", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").StaffMembers().Post(context.Background(), requestBody, nil)


```