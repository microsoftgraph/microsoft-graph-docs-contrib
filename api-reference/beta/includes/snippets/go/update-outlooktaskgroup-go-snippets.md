---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewOutlookTaskGroup()
name := "Personal Tasks"
requestBody.SetName(&name)
outlookTaskGroupId := "outlookTaskGroup-id"
graphClient.Me().Outlook().TaskGroupsById(&outlookTaskGroupId).Patch(requestBody)


```