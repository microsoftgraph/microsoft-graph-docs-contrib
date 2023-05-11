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
time , err := time.Parse(time.RFC3339, "datetime-value")
responseStatus.SetTime(&time) 
requestBody.SetResponseStatus(responseStatus)
uid := "iCalUId-value"
requestBody.SetUid(&uid) 
reminderMinutesBeforeStart := int32(99)
requestBody.SetReminderMinutesBeforeStart(&reminderMinutesBeforeStart) 
isReminderOn := true
requestBody.SetIsReminderOn(&isReminderOn) 

result, err := graphClient.Groups().ByGroupId("group-id").Events().ByEventId("event-id").Patch(context.Background(), requestBody, nil)


```