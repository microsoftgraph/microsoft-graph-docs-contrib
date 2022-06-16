---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
emailAddress := msgraphsdk.NewEmailAddress()
	SetEmailAddress(emailAddress)
address := "danas@contoso.onmicrosoft.com"
	emailAddress.SetAddress(&address)
name := "Dana Swope"
	emailAddress.SetName(&name)
}
comment := "Dana, hope you can make this meeting."
requestBody.SetComment(&comment)
eventId := "event-id"
graphClient.Me().EventsById(&eventId).Forward(event-id).Post(requestBody)


```