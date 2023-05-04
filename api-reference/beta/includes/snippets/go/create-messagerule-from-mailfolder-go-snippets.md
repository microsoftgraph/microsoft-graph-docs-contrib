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
address := "AlexW@contoso.onmicrosoft.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

forwardTo := []graphmodels.Recipientable {
	recipient,

}
actions.SetForwardTo(forwardTo)
stopProcessingRules := true
actions.SetStopProcessingRules(&stopProcessingRules) 
requestBody.SetActions(actions)

result, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").MessageRules().Post(context.Background(), requestBody, nil)


```