---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewMessage()
subject := "Party planning"
requestBody.SetSubject(&subject)
requestBody.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
	SetAdditionalData(map[string]interface{}{
	}
}
requestBody.SetMentions( []Mention {
	msgraphsdk.NewMention(),
	SetAdditionalData(map[string]interface{}{
	}
}
options := &msgraphsdk.MessagesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Messages().Post(options)


```