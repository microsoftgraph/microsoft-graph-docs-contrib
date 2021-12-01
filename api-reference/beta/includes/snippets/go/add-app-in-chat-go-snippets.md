---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTeamsAppInstallation()
requestBody.SetAdditionalData(map[string]interface{}{
	"teamsApp@odata.bind": "https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a",
}
options := &msgraphsdk.InstalledAppsRequestBuilderPostOptions{
	Body: requestBody,
}
chatId := "chat-id"
result, err := graphClient.ChatsById(&chatId).InstalledApps().Post(options)


```