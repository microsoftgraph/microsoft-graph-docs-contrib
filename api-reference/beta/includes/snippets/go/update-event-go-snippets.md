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


requestBody := graphmodels.NewEvent()
originalStartTimeZone := "originalStartTimeZone-value"
requestBody.SetOriginalStartTimeZone(&originalStartTimeZone) 
originalEndTimeZone := "originalEndTimeZone-value"
requestBody.SetOriginalEndTimeZone(&originalEndTimeZone) 
responseStatus := graphmodels.NewResponseStatus()
response := graphmodels.NONE_RESPONSETYPE 
responseStatus.SetResponse(&response) 
time , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
responseStatus.SetTime(&time) 
requestBody.SetResponseStatus(responseStatus)
recurrence := null
requestBody.SetRecurrence(&recurrence) 
uid := "iCalUId-value"
requestBody.SetUid(&uid) 
reminderMinutesBeforeStart := int32(99)
requestBody.SetReminderMinutesBeforeStart(&reminderMinutesBeforeStart) 
isOnlineMeeting := true
requestBody.SetIsOnlineMeeting(&isOnlineMeeting) 
onlineMeetingProvider := graphmodels.TEAMSFORBUSINESS_ONLINEMEETINGPROVIDERTYPE 
requestBody.SetOnlineMeetingProvider(&onlineMeetingProvider) 
isReminderOn := true
requestBody.SetIsReminderOn(&isReminderOn) 
hideAttendees := false
requestBody.SetHideAttendees(&hideAttendees) 
categories := []string {
	"Red category",

}
requestBody.SetCategories(categories)

result, err := graphClient.Me().Events().ByEventId("event-id").Patch(context.Background(), requestBody, nil)


```