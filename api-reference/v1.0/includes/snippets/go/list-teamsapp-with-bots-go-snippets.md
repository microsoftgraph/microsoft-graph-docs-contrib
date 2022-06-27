---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.TeamsAppsRequestBuilderGetQueryParameters{
	Expand: "appDefinitions($expand=bot)",
	Filter: "appDefinitions/any(a:a/bot%20ne%20null)",
}
options := &msgraphsdk.TeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.AppCatalogs().TeamsApps().GetWithRequestConfigurationAndResponseHandler(options, nil)


```