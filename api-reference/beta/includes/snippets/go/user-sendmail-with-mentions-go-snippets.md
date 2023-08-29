---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemSendMailPostRequestBody()
message := graphmodels.NewMessage()
subject := "Project kickoff"
message.SetSubject(&subject) 


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
name := "Samantha Booth"
emailAddress.SetName(&name) 
address := "samanthab@contoso.onmicrosoft.com"
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
address := "danas@contoso.onmicrosoft.com"
mentioned.SetAddress(&address) 
mention.SetMentioned(mentioned)

mentions := []graphmodels.Mentionable {
	mention,
}
message.SetMentions(mentions)
requestBody.SetMessage(message)

graphClient.Me().SendMail().Post(context.Background(), requestBody, nil)


```