---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
message := msgraphsdk.NewMessage()
requestBody.SetMessage(message)
isDeliveryReceiptRequested := true
message.SetIsDeliveryReceiptRequested(&isDeliveryReceiptRequested)
message.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
	SetAdditionalData(map[string]interface{}{
	}
}
comment := "Dana, just want to make sure you get this."
requestBody.SetComment(&comment)
options := &msgraphsdk.ForwardRequestBuilderPostOptions{
	Body: requestBody,
}
messageId := "message-id"
graphClient.Me().MessagesById(&messageId).Forward().Post(options)


```