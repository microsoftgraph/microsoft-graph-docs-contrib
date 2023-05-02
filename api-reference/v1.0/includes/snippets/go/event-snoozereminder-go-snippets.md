---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/Events/Item/SnoozeReminder"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSnoozeReminderPostRequestBody()
newReminderTime := graphmodels.NewDateTimeTimeZone()
dateTime := "dateTime-value"
newReminderTime.SetDateTime(&dateTime) 
timeZone := "timeZone-value"
newReminderTime.SetTimeZone(&timeZone) 
requestBody.SetNewReminderTime(newReminderTime)

graphClient.Me().Events().ByEventId("event-id").SnoozeReminder().Post(context.Background(), requestBody, nil)


```