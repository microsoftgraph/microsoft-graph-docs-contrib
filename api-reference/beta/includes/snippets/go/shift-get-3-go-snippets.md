---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewShiftPreferencesPostRequestBody()
additionalData := map[string]interface{}{
	"id" : "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7", 
	"@odata.etag" : "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa", 


 := graphmodels.New()
recurrence := graphmodels.New()
pattern := graphmodels.New()
type := "Weekly"
pattern.SetType(&type) 
daysOfWeek := []string {
	"Monday",
	"Wednesday",
	"Friday",

}
pattern.SetDaysOfWeek(daysOfWeek)
interval := int32(1)
pattern.SetInterval(&interval) 
recurrence.SetPattern(pattern)
range := graphmodels.New()
type := "noEnd"
range.SetType(&type) 
recurrence.SetRange(range)
.SetRecurrence(recurrence)
timeZone := "Pacific Standard Time"
.SetTimeZone(&timeZone) 
timeSlots := null
.SetTimeSlots(&timeSlots) 

	availability := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.UsersById("user-id").Settings().ShiftPreferences().Put(requestBody)


```