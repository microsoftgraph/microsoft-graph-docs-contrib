---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")

configuration := &graphusers.ItemOutlookTasksRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewOutlookTask()
subject := "Shop for children's weekend"
requestBody.SetSubject(&subject) 
startDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-05-03T09:00:00"
startDateTime.SetDateTime(&dateTime) 
timeZone := "Eastern Standard Time"
startDateTime.SetTimeZone(&timeZone) 
requestBody.SetStartDateTime(startDateTime)
dueDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-05-05T16:00:00"
dueDateTime.SetDateTime(&dateTime) 
timeZone := "Eastern Standard Time"
dueDateTime.SetTimeZone(&timeZone) 
requestBody.SetDueDateTime(dueDateTime)

result, err := graphClient.Me().Outlook().Tasks().Post(context.Background(), requestBody, configuration)


```