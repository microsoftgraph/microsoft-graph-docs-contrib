---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewOutlookTaskFolder()
name := "Charity work"
requestBody.SetName(&name) 

result, err := graphClient.Me().Outlook().TaskFoldersById("outlookTaskFolder-id").Patch(context.Background(), requestBody, nil)


```