---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

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

result, err := graphClient.Me().Outlook().TaskFoldersById("outlookTaskFolder-id").Tasks().Post(context.Background(), requestBody, nil)


```