---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewOutlookTaskFolder()
name := "Volunteer"
requestBody.SetName(&name) 

result, err := graphClient.Me().Outlook().TaskFolders().Post(context.Background(), requestBody, nil)


```