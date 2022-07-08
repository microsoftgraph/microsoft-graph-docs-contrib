---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUserScopeTeamsAppInstallation()
requestBody.SetAdditionalData(map[string]interface{}{
	"teamsApp@odata.bind": "https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a",
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).Teamwork().InstalledApps().Post(requestBody)


```