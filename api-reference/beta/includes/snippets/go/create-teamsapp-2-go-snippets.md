---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestRequiresReview := true

requestParameters := &graphconfig.AppCatalogsTeamsAppsRequestBuilderPostQueryParameters{
	RequiresReview: &requestRequiresReview,
}
configuration := &graphconfig.AppCatalogsTeamsAppsRequestBuilderPostRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.AppCatalogs().TeamsApps().Post(context.Background(), configuration)


```