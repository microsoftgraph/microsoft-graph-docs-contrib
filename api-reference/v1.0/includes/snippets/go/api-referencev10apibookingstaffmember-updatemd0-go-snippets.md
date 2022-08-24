---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBookingStaffMemberBase()
additionalData := map[string]interface{}{


 := graphmodels.New()
"day@odata.type" := "#microsoft.graph.dayOfWeek"
.Set"day@odata.type"(&"day@odata.type") 
day := "monday"
.SetDay(&day) 
"timeSlots@odata.type" := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.Set"timeSlots@odata.type"(&"timeSlots@odata.type") 
timeSlots := []graphmodels.able {

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

graphClient.Solutions().BookingBusinessesById("bookingBusiness-id").StaffMembersById("bookingStaffMemberBase-id").Patch(requestBody)


```