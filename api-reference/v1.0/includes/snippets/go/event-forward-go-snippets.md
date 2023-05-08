---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/Events/Item/Forward"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewForwardPostRequestBody()


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
requestBody.SetToRecipients(toRecipients)
comment := "Dana, hope you can make this meeting."
requestBody.SetComment(&comment) 

graphClient.Me().Events().ByEventId("event-id").Forward().Post(context.Background(), requestBody, nil)


```