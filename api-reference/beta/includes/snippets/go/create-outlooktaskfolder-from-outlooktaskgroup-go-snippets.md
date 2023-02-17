---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOutlookTaskFolder()
name := "Cooking"
requestBody.SetName(&name) 

result, err := graphClient.Me().Outlook().TaskGroupsById("outlookTaskGroup-id").TaskFolders().Post(context.Background(), requestBody, nil)


```