---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
message := msgraphsdk.NewMessage()
requestBody.SetMessage(message)
message.SetAttachments( []Attachment {
	msgraphsdk.NewAttachment(),
name := "guidelines.txt"
	SetName(&name)
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.fileAttachment",
		"contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk=",
	}
}
comment := "if the project gets approved, please take a look at the attached guidelines before you decide on the name."
requestBody.SetComment(&comment)
messageId := "message-id"
result, err := graphClient.Me().MessagesById(&messageId).CreateReplyAll(message-id).Post(requestBody)


```