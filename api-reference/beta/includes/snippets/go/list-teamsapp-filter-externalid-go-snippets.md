---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'"

requestParameters := &graphconfig.TeamsAppsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.TeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.AppCatalogs().TeamsApps().Get(context.Background(), configuration)


```