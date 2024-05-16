---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemReplyPostRequestBody()
message := graphmodels.NewMessage()


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
address := "samanthab@contoso.com"
emailAddress.SetAddress(&address) 
name := "Samantha Booth"
emailAddress.SetName(&name) 
recipient.SetEmailAddress(emailAddress)
recipient1 := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
address := "randiw@contoso.com"
emailAddress.SetAddress(&address) 
name := "Randi Welch"
emailAddress.SetName(&name) 
recipient1.SetEmailAddress(emailAddress)

toRecipients := []graphmodels.Recipientable {
	recipient,
	recipient1,
}
message.SetToRecipients(toRecipients)
requestBody.SetMessage(message)
comment := "Samantha, Randi, would you name the group please?"
requestBody.SetComment(&comment) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().Messages().ByMessageId("message-id").Reply().Post(context.Background(), requestBody, nil)


```