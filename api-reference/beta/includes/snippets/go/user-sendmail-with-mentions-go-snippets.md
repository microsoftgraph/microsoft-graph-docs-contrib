---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
message := msgraphsdk.NewMessage()
requestBody.SetMessage(message)
subject := "Project kickoff"
message.SetSubject(&subject)
message.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
	SetAdditionalData(map[string]interface{}{
	}
}
message.SetMentions( []Mention {
	msgraphsdk.NewMention(),
	SetAdditionalData(map[string]interface{}{
	}
}
options := &msgraphsdk.SendMailRequestBuilderPostOptions{
	Body: requestBody,
}
graphClient.Me().SendMail().Post(options)


```