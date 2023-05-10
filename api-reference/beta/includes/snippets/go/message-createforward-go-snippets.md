---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/Messages/Item/CreateForward"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCreateForwardPostRequestBody()
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
comment := "Dana, just want to make sure you get this; you'll need this if the project gets approved."
requestBody.SetComment(&comment) 

result, err := graphClient.Me().Messages().ByMessageId("message-id").CreateForward().Post(context.Background(), requestBody, nil)


```