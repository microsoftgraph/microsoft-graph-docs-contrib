---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Users/Item/Settings/ShiftPreferences"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewShiftPreferencesPutRequestBody()
additionalData := map[string]interface{}{
	"id" : "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7", 
	"odataEtag" : "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa", 


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

graphClient.Users().ByUserId("user-id").Settings().ShiftPreferences().Put(context.Background(), requestBody, nil)


```