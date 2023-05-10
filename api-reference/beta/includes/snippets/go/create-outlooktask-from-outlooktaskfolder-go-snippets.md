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


requestBody := graphmodels.NewOutlookTask()
subject := "Shop for dinner"
requestBody.SetSubject(&subject) 
startDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-04-23T18:00:00"
startDateTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
startDateTime.SetTimeZone(&timeZone) 
requestBody.SetStartDateTime(startDateTime)
dueDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-04-25T13:00:00"
dueDateTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
dueDateTime.SetTimeZone(&timeZone) 
requestBody.SetDueDateTime(dueDateTime)

result, err := graphClient.Me().Outlook().TaskFolders().ByTaskFolderId("outlookTaskFolder-id").Tasks().Post(context.Background(), requestBody, nil)


```