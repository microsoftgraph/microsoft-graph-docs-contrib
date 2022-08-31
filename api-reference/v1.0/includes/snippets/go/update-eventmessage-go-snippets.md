---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMessage()
isRead := true
requestBody.SetIsRead(&isRead) 

graphClient.Me().MessagesById("message-id").Patch(requestBody)


```