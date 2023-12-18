---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemSnoozeReminderPostRequestBody()
newReminderTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-10-19T10:37:00Z"
newReminderTime.SetDateTime(&dateTime) 
timeZone := "timeZone-value"
newReminderTime.SetTimeZone(&timeZone) 
requestBody.SetNewReminderTime(newReminderTime)

graphClient.Me().Events().ByEventId("event-id").SnoozeReminder().Post(context.Background(), requestBody, nil)


```