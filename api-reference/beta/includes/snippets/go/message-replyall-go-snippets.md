---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
message := msgraphsdk.NewMessage()
requestBody.SetMessage(message)
message.SetAdditionalData(map[string]interface{}{
	"attachments":  []Object {
	}
}
comment := "Please take a look at the attached guidelines before you decide on the name."
requestBody.SetComment(&comment)
options := &msgraphsdk.ReplyAllRequestBuilderPostOptions{
	Body: requestBody,
}
messageId := "message-id"
graphClient.Me().MessagesById(&messageId).ReplyAll().Post(options)


```