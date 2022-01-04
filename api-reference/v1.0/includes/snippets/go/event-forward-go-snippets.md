---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
	SetAdditionalData(map[string]interface{}{
	}
}
comment := "Dana, hope you can make this meeting."
requestBody.SetComment(&comment)
options := &msgraphsdk.ForwardRequestBuilderPostOptions{
	Body: requestBody,
}
eventId := "event-id"
graphClient.Me().EventsById(&eventId).Forward().Post(options)


```