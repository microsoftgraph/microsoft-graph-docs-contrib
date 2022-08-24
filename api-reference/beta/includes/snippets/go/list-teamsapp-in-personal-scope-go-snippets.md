---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "appDefinitions/any"

requestParameters := &graphconfig.TeamsAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"appDefinitions($select=id,displayName,allowedInstallationScopes)"},
	Filter: &requestFilter,
}
configuration := &graphconfig.TeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.AppCatalogs().TeamsApps().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```