---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
comment := "comment-value"
requestBody.SetComment(&comment)
options := &msgraphsdk.ReplyAllRequestBuilderPostOptions{
	Body: requestBody,
}
messageId := "message-id"
graphClient.Me().MessagesById(&messageId).ReplyAll().Post(options)


```