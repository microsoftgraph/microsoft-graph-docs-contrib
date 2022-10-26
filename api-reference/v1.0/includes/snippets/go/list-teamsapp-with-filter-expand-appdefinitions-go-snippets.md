---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "id eq '876df28f-2e78-423b-94a5-44181bd0e225'"

requestParameters := &graphconfig.TeamsAppsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"appDefinitions"},
}
configuration := &graphconfig.TeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.AppCatalogs().TeamsApps().Get(context.Background(), configuration)


```