---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemSnoozeReminderPostRequestBody()
newReminderTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-10-19T10:37:00Z"
newReminderTime.SetDateTime(&dateTime) 
timeZone := "timeZone-value"
newReminderTime.SetTimeZone(&timeZone) 
requestBody.SetNewReminderTime(newReminderTime)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().Events().ByEventId("event-id").SnoozeReminder().Post(context.Background(), requestBody, nil)


```