---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReplyAllPostRequestBody()
comment := "comment-value"
requestBody.SetComment(&comment) 

graphClient.Me().MessagesById("message-id").ReplyAll().Post(requestBody)


```