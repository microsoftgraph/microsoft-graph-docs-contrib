---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMessageRule()
displayName := "From partner"
requestBody.SetDisplayName(&displayName)
sequence := int32(2)
requestBody.SetSequence(&sequence)
isEnabled := true
requestBody.SetIsEnabled(&isEnabled)
conditions := msgraphsdk.NewMessageRulePredicates()
requestBody.SetConditions(conditions)
conditions.SetSenderContains( []String {
	"adele",
}
actions := msgraphsdk.NewMessageRuleActions()
requestBody.SetActions(actions)
actions.SetForwardTo( []Recipient {
	msgraphsdk.NewRecipient(),
emailAddress := msgraphsdk.NewEmailAddress()
	SetEmailAddress(emailAddress)
name := "Alex Wilbur"
	emailAddress.SetName(&name)
address := "AlexW@contoso.onmicrosoft.com"
	emailAddress.SetAddress(&address)
}
stopProcessingRules := true
actions.SetStopProcessingRules(&stopProcessingRules)
mailFolderId := "mailFolder-id"
result, err := graphClient.Me().MailFoldersById(&mailFolderId).MessageRules().Post(requestBody)


```