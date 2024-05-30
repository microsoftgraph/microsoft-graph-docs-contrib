---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMessageRule()
displayName := "From partner"
requestBody.SetDisplayName(&displayName) 
sequence := int32(2)
requestBody.SetSequence(&sequence) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
conditions := graphmodels.NewMessageRulePredicates()
senderContains := []string {
	"adele",
}
conditions.SetSenderContains(senderContains)
requestBody.SetConditions(conditions)
actions := graphmodels.NewMessageRuleActions()


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
name := "Alex Wilbur"
emailAddress.SetName(&name) 
address := "AlexW@contoso.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

forwardTo := []graphmodels.Recipientable {
	recipient,
}
actions.SetForwardTo(forwardTo)
stopProcessingRules := true
actions.SetStopProcessingRules(&stopProcessingRules) 
requestBody.SetActions(actions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messageRules, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").MessageRules().Post(context.Background(), requestBody, nil)


```