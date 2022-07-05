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
emailAddress := msgraphsdk.NewEmailAddress()
	SetEmailAddress(emailAddress)
name := "Samantha Booth"
	emailAddress.SetName(&name)
address := "samanthab@contoso.onmicrosoft.com"
	emailAddress.SetAddress(&address)
}
message.SetMentions( []Mention {
	msgraphsdk.NewMention(),
mentioned := msgraphsdk.NewEmailAddress()
	SetMentioned(mentioned)
name := "Dana Swope"
	mentioned.SetName(&name)
address := "danas@contoso.onmicrosoft.com"
	mentioned.SetAddress(&address)
}
graphClient.Me().SendMail().Post(requestBody)


```