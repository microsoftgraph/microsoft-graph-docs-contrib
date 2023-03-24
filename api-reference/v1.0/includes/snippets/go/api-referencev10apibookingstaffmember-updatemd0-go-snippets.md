---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewBookingStaffMemberBase()
additionalData := map[string]interface{}{


 := graphmodels.New()
odataType := "#microsoft.graph.dayOfWeek"
.SetOdataType(&odataType) 
day := "monday"
.SetDay(&day) 
odataType := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.SetOdataType(&odataType) 
timeSlots := []graphmodels.able {

}
.SetTimeSlots(timeSlots)
 := graphmodels.New()
odataType := "#microsoft.graph.dayOfWeek"
.SetOdataType(&odataType) 
day := "tuesday"
.SetDay(&day) 
odataType := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.SetOdataType(&odataType) 


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
odataType := "#microsoft.graph.dayOfWeek"
.SetOdataType(&odataType) 
day := "wednesday"
.SetDay(&day) 
odataType := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.SetOdataType(&odataType) 


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
odataType := "#microsoft.graph.dayOfWeek"
.SetOdataType(&odataType) 
day := "thursday"
.SetDay(&day) 
odataType := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.SetOdataType(&odataType) 


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
odataType := "#microsoft.graph.dayOfWeek"
.SetOdataType(&odataType) 
day := "friday"
.SetDay(&day) 
odataType := "#Collection(microsoft.graph.bookingWorkTimeSlot)"
.SetOdataType(&odataType) 


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

result, err := graphClient.Solutions().BookingBusinessesById("bookingBusiness-id").StaffMembersById("bookingStaffMemberBase-id").Patch(context.Background(), requestBody, nil)


```