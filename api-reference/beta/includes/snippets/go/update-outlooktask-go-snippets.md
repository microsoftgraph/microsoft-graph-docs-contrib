---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "outlook.timezone=\"Eastern Standard Time\"",
}
configuration := &graphconfig.OutlookTaskRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewOutlookTask()
dueDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-05-06T16:00:00"
dueDateTime.SetDateTime(&dateTime) 
timeZone := "Eastern Standard Time"
dueDateTime.SetTimeZone(&timeZone) 
requestBody.SetDueDateTime(dueDateTime)

graphClient.Me().Outlook().TasksById("outlookTask-id").PatchWithRequestConfigurationAndResponseHandler(requestBody, configuration, nil)


```