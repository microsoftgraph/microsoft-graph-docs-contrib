---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOutlookTaskGroup()
name := "Leisure tasks"
requestBody.SetName(&name) 

result, err := graphClient.Me().Outlook().TaskGroups().Post(requestBody)


```