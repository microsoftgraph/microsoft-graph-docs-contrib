---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.TeamsAppsRequestBuilderGetQueryParameters{
	Filter: "distributionMethod%20eq%20'organization'",
}
options := &msgraphsdk.TeamsAppsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.AppCatalogs().TeamsApps().Get(options)


```