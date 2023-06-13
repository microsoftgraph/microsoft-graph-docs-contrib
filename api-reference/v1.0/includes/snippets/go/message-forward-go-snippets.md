---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewForwardPostRequestBody()
comment := "comment-value"
requestBody.SetComment(&comment) 


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
name := "name-value"
emailAddress.SetName(&name) 
address := "address-value"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

toRecipients := []graphusers.Recipientable {
	recipient,

}
requestBody.SetToRecipients(toRecipients)

graphClient.Me().Messages().ByMessageId("message-id").Forward().Post(context.Background(), requestBody, nil)


```