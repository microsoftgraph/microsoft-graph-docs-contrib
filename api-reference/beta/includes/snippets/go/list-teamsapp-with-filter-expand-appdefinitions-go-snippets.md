---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.TeamsAppsRequestBuilderGetQueryParameters{
	Filter: "id eq '876df28f-2e78-423b-94a5-44181bd0e225'",
	Expand: [] string {"appDefinitions"},
}
configuration := &graphconfig.TeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.AppCatalogs().TeamsApps().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```