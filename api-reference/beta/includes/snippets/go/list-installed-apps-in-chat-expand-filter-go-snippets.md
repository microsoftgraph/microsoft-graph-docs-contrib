---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'"

requestParameters := &graphconfig.ChatItemInstalledAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp","teamsAppDefinition"},
	Filter: &requestFilter,
}
configuration := &graphconfig.ChatItemInstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").InstalledApps().Get(context.Background(), configuration)


```