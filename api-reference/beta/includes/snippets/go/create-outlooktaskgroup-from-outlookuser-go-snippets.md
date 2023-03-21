---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewOutlookTaskGroup()
name := "Leisure tasks"
requestBody.SetName(&name) 

result, err := graphClient.Me().Outlook().TaskGroups().Post(context.Background(), requestBody, nil)


```