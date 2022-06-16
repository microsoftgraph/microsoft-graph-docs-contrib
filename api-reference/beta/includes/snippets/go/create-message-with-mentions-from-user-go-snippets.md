---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMessage()
subject := "Party planning"
requestBody.SetSubject(&subject)
requestBody.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
emailAddress := msgraphsdk.NewEmailAddress()
	SetEmailAddress(emailAddress)
name := "Samantha Booth"
	emailAddress.SetName(&name)
address := "samanthab@contoso.onmicrosoft.com"
	emailAddress.SetAddress(&address)
}
requestBody.SetMentions( []Mention {
	msgraphsdk.NewMention(),
mentioned := msgraphsdk.NewEmailAddress()
	SetMentioned(mentioned)
name := "Dana Swope"
	mentioned.SetName(&name)
address := "danas@contoso.onmicrosoft.com"
	mentioned.SetAddress(&address)
}
result, err := graphClient.Me().Messages().Post(requestBody)


```