---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
user := msgraphsdk.NewTeamworkUserIdentity()
requestBody.SetUser(user)
user.SetAdditionalData(map[string]interface{}{
	"id": "d864e79f-a516-4d0f-9fee-0eeb4d61fdc2",
}
tenantId := "2a690434-97d9-4eed-83a6-f5f13600199a"
requestBody.SetTenantId(&tenantId)
options := &msgraphsdk.HideForUserRequestBuilderPostOptions{
	Body: requestBody,
}
chatId := "chat-id"
graphClient.ChatsById(&chatId).HideForUser().Post(options)


```