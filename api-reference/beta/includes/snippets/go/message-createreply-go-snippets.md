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
emailAddress := msgraphsdk.NewEmailAddress()
	SetEmailAddress(emailAddress)
address := "samanthab@contoso.onmicrosoft.com"
	emailAddress.SetAddress(&address)
name := "Samantha Booth"
	emailAddress.SetName(&name)
	msgraphsdk.NewRecipient(),
emailAddress := msgraphsdk.NewEmailAddress()
	SetEmailAddress(emailAddress)
address := "randiw@contoso.onmicrosoft.com"
	emailAddress.SetAddress(&address)
name := "Randi Welch"
	emailAddress.SetName(&name)
}
comment := "Samantha, Randi, would you name the group if the project is approved, please?"
requestBody.SetComment(&comment)
messageId := "message-id"
result, err := graphClient.Me().MessagesById(&messageId).CreateReply(message-id).Post(requestBody)


```