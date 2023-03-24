---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewForwardPostRequestBody()
message := graphmodels.NewMessage()
isDeliveryReceiptRequested := true
message.SetIsDeliveryReceiptRequested(&isDeliveryReceiptRequested) 


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
address := "danas@contoso.onmicrosoft.com"
emailAddress.SetAddress(&address) 
name := "Dana Swope"
emailAddress.SetName(&name) 
recipient.SetEmailAddress(emailAddress)

toRecipients := []graphmodels.Recipientable {
	recipient,

}
message.SetToRecipients(toRecipients)
requestBody.SetMessage(message)
comment := "Dana, just want to make sure you get this."
requestBody.SetComment(&comment) 

graphClient.Me().MessagesById("message-id").Forward().Post(context.Background(), requestBody, nil)


```