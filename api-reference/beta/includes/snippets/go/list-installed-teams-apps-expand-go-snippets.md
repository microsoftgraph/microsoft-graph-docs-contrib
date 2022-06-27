---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.InstalledAppsRequestBuilderGetQueryParameters{
	Expand: "teamsAppDefinition($expand=bot)",
}
options := &msgraphsdk.InstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).InstalledApps().GetWithRequestConfigurationAndResponseHandler(options, nil)


```