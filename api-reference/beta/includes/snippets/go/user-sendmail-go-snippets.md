---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/SendMail"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSendMailPostRequestBody()
message := graphmodels.NewMessage()
subject := "Meet for lunch?"
message.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
body.SetContentType(&contentType) 
content := "The new cafeteria is open."
body.SetContent(&content) 
message.SetBody(body)


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
address := "samanthab@contoso.onmicrosoft.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

toRecipients := []graphmodels.Recipientable {
	recipient,

}
message.SetToRecipients(toRecipients)


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
address := "danas@contoso.onmicrosoft.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

ccRecipients := []graphmodels.Recipientable {
	recipient,

}
message.SetCcRecipients(ccRecipients)
requestBody.SetMessage(message)
saveToSentItems := false
requestBody.SetSaveToSentItems(&saveToSentItems) 

graphClient.Me().SendMail().Post(context.Background(), requestBody, nil)


```