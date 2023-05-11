---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingStaffMemberBase()
additionalData := map[string]interface{}{
	"displayName" : "Dana Swope", 
	"emailAddress" : "danas@contoso.com", 
	"odataType" : "#microsoft.graph.bookingStaffRole", 
	"role" : "externalGuest", 
	"timeZone" : "America/Chicago", 
	useBusinessHours := true
requestBody.SetUseBusinessHours(&useBusinessHours) 
	"odataType" : "#Collection(microsoft.graph.bookingWorkHours)", 


 := graphmodels.New()
odataType := "#microsoft.graph.dayOfWeek"
.SetOdataType(&odataType) 
day := "monday"
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
	isEmailNotificationEnabled := false
requestBody.SetIsEmailNotificationEnabled(&isEmailNotificationEnabled) 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").StaffMembers().Post(context.Background(), requestBody, nil)


```