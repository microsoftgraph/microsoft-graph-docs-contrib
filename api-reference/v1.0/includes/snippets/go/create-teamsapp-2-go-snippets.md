---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestRequiresReview := true

requestParameters := &graphconfig.TeamsAppsRequestBuilderPostQueryParameters{
	RequiresReview: &requestRequiresReview,
}
configuration := &graphconfig.TeamsAppsRequestBuilderPostRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.AppCatalogs().TeamsApps().Post(context.Background(), configuration)


```