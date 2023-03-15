---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.ChatItemInstalledAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsAppDefinition($expand=bot)"},
}
configuration := &graphconfig.ChatItemInstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").InstalledApps().Get(context.Background(), configuration)


```