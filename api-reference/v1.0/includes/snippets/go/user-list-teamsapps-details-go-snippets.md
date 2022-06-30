---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.InstalledAppsRequestBuilderGetQueryParameters{
	Expand: "teamsAppDefinition",
}
options := &msgraphsdk.InstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).Teamwork().InstalledApps().GetWithRequestConfigurationAndResponseHandler(options, nil)


```