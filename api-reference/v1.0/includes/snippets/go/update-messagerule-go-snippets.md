---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMessageRule()
displayName := "Important from partner"
requestBody.SetDisplayName(&displayName)
actions := msgraphsdk.NewMessageRuleActions()
requestBody.SetActions(actions)
markImportance := "high"
actions.SetMarkImportance(&markImportance)
options := &msgraphsdk.MessageRuleRequestBuilderPatchOptions{
	Body: requestBody,
}
mailFolderId := "mailFolder-id"
messageRuleId := "messageRule-id"
result, err := graphClient.Me().MailFoldersById(&mailFolderId).MessageRulesById(&messageRuleId).Patch(options)


```