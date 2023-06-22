---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMessage()
subject := "Party planning"
requestBody.SetSubject(&subject) 


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
requestBody.SetToRecipients(toRecipients)


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
requestBody.SetMentions(mentions)

result, err := graphClient.Me().Messages().Post(context.Background(), requestBody, nil)


```