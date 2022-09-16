---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.InstalledAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsAppDefinition($expand=bot)"},
}
configuration := &graphconfig.InstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").InstalledApps().Get(context.Background(), configuration)


```