---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.TeamsAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"appDefinitions($expand=bot)"},
	Filter: "appDefinitions/any",
}
configuration := &graphconfig.TeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.AppCatalogs().TeamsApps().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```