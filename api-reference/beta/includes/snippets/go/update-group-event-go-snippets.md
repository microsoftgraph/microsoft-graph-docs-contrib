---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
events, err := graphClient.Groups().ByGroupId("group-id").Events().ByEventId("event-id").Patch(context.Background(), requestBody, nil)


```