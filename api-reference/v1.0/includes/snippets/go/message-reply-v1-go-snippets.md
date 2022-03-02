---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
message := msgraphsdk.NewMessage()
requestBody.SetMessage(message)
message.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
	SetAdditionalData(map[string]interface{}{
	}
	msgraphsdk.NewRecipient(),
	SetAdditionalData(map[string]interface{}{
	}
}
comment := "Samantha, Randi, would you name the group please?"
requestBody.SetComment(&comment)
options := &msgraphsdk.ReplyRequestBuilderPostOptions{
	Body: requestBody,
}
messageId := "message-id"
graphClient.Me().MessagesById(&messageId).Reply().Post(options)


```