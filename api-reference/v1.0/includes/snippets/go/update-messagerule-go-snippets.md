---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMessageRule()
displayName := "Important from partner"
requestBody.SetDisplayName(&displayName) 
actions := graphmodels.NewMessageRuleActions()
markImportance := graphmodels.HIGH_IMPORTANCE 
actions.SetMarkImportance(&markImportance) 
requestBody.SetActions(actions)

result, err := graphClient.Me().MailFoldersById("mailFolder-id").MessageRulesById("messageRule-id").Patch(context.Background(), requestBody, nil)


```