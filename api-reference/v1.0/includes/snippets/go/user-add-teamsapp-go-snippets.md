---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewUserScopeTeamsAppInstallation()
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/12345678-9abc-def0-123456789a", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.UsersById("user-id").Teamwork().InstalledApps().Post(context.Background(), requestBody, nil)


```