---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewOutlookTask()
subject := "Shop for dinner"
requestBody.SetSubject(&subject)
startDateTime := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetStartDateTime(startDateTime)
dateTime := "2016-04-23T18:00:00"
startDateTime.SetDateTime(&dateTime)
timeZone := "Pacific Standard Time"
startDateTime.SetTimeZone(&timeZone)
dueDateTime := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetDueDateTime(dueDateTime)
dateTime := "2016-04-25T13:00:00"
dueDateTime.SetDateTime(&dateTime)
timeZone := "Pacific Standard Time"
dueDateTime.SetTimeZone(&timeZone)
options := &msgraphsdk.TasksRequestBuilderPostOptions{
	Body: requestBody,
}
outlookTaskFolderId := "outlookTaskFolder-id"
result, err := graphClient.Me().Outlook().TaskFoldersById(&outlookTaskFolderId).Tasks().Post(options)


```