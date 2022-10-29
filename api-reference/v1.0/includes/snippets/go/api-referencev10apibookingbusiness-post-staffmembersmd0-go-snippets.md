---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBookingStaffMemberBase()
additionalData := map[string]interface{}{
	"displayName" : "Dana Swope", 
	"emailAddress" : "danas@contoso.com", 
	"role@odata.type" : "#microsoft.graph.bookingStaffRole", 
	"role" : "externalGuest", 
	"timeZone" : "America/Chicago", 
	useBusinessHours := true
requestBody.SetUseBusinessHours(&useBusinessHours) 
	"workingHours@odata.type" : "#Collection(microsoft.graph.bookingWorkHours)", 


 := graphmodels.New()
"day@odata.type" := "#microsoft.graph.dayOfWeek"
.Set"day@odata.type"(&"day@odata.type") 
day := "monday"
.SetDay(&day) 
"timeSlots@odata.type" := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.Set"timeSlots@odata.type"(&"timeSlots@odata.type") 


 := graphmodels.New()
endTime := "17:00:00.0000000"
.SetEndTime(&endTime) 
startTime := "08:00:00.0000000"
.SetStartTime(&startTime) 

timeSlots := []graphmodels.Objectable {
	,

}
.SetTimeSlots(timeSlots)
 := graphmodels.New()
"day@odata.type" := "#microsoft.graph.dayOfWeek"
.Set"day@odata.type"(&"day@odata.type") 
day := "tuesday"
.SetDay(&day) 
"timeSlots@odata.type" := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.Set"timeSlots@odata.type"(&"timeSlots@odata.type") 


 := graphmodels.New()
endTime := "17:00:00.0000000"
.SetEndTime(&endTime) 
startTime := "08:00:00.0000000"
.SetStartTime(&startTime) 

timeSlots := []graphmodels.Objectable {
	,

}
.SetTimeSlots(timeSlots)
 := graphmodels.New()
"day@odata.type" := "#microsoft.graph.dayOfWeek"
.Set"day@odata.type"(&"day@odata.type") 
day := "wednesday"
.SetDay(&day) 
"timeSlots@odata.type" := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.Set"timeSlots@odata.type"(&"timeSlots@odata.type") 


 := graphmodels.New()
endTime := "17:00:00.0000000"
.SetEndTime(&endTime) 
startTime := "08:00:00.0000000"
.SetStartTime(&startTime) 

timeSlots := []graphmodels.Objectable {
	,

}
.SetTimeSlots(timeSlots)
 := graphmodels.New()
"day@odata.type" := "#microsoft.graph.dayOfWeek"
.Set"day@odata.type"(&"day@odata.type") 
day := "thursday"
.SetDay(&day) 
"timeSlots@odata.type" := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.Set"timeSlots@odata.type"(&"timeSlots@odata.type") 


 := graphmodels.New()
endTime := "17:00:00.0000000"
.SetEndTime(&endTime) 
startTime := "08:00:00.0000000"
.SetStartTime(&startTime) 

timeSlots := []graphmodels.Objectable {
	,

}
.SetTimeSlots(timeSlots)
 := graphmodels.New()
"day@odata.type" := "#microsoft.graph.dayOfWeek"
.Set"day@odata.type"(&"day@odata.type") 
day := "friday"
.SetDay(&day) 
"timeSlots@odata.type" := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.Set"timeSlots@odata.type"(&"timeSlots@odata.type") 


 := graphmodels.New()
endTime := "17:00:00.0000000"
.SetEndTime(&endTime) 
startTime := "08:00:00.0000000"
.SetStartTime(&startTime) 

timeSlots := []graphmodels.Objectable {
	,

}
.SetTimeSlots(timeSlots)

	workingHours := []graphmodels.Objectable {
		,
		,
		,
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Solutions().BookingBusinessesById("bookingBusiness-id").StaffMembers().Post(context.Background(), requestBody, nil)


```