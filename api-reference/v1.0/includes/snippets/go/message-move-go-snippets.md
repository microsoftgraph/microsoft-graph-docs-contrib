---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewMovePostRequestBody()
destinationId := "deleteditems"
requestBody.SetDestinationId(&destinationId) 

result, err := graphClient.Me().MessagesById("message-id").Move().Post(context.Background(), requestBody, nil)


```