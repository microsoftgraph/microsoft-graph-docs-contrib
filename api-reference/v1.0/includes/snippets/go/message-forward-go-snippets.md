---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewForwardPostRequestBody()
comment := "comment-value"
requestBody.SetComment(&comment) 


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
name := "name-value"
emailAddress.SetName(&name) 
address := "address-value"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

toRecipients := []graphmodels.Recipientable {
	recipient,

}
requestBody.SetToRecipients(toRecipients)

graphClient.Me().MessagesById("message-id").Forward().Post(context.Background(), requestBody, nil)


```