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

requestBody := graphusers.NewItemSendMailPostRequestBody()
message := graphmodels.NewMessage()
subject := "Project kickoff"
message.SetSubject(&subject) 


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
name := "Samantha Booth"
emailAddress.SetName(&name) 
address := "samanthab@contoso.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

toRecipients := []graphmodels.Recipientable {
	recipient,
}
message.SetToRecipients(toRecipients)


mention := graphmodels.NewMention()
mentioned := graphmodels.NewEmailAddress()
name := "Dana Swope"
mentioned.SetName(&name) 
address := "danas@contoso.com"
mentioned.SetAddress(&address) 
mention.SetMentioned(mentioned)

mentions := []graphmodels.Mentionable {
	mention,
}
message.SetMentions(mentions)
requestBody.SetMessage(message)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().SendMail().Post(context.Background(), requestBody, nil)


```