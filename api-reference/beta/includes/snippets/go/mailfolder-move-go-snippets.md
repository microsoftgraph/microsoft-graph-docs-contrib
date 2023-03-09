---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewMovePostRequestBody()
destinationId := "destinationId-value"
requestBody.SetDestinationId(&destinationId) 

result, err := graphClient.Me().MailFoldersById("mailFolder-id").Move().Post(context.Background(), requestBody, nil)


```