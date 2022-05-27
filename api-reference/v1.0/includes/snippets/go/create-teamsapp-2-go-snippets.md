---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.TeamsAppsRequestBuilderPostQueryParameters{
	RequiresReview: true,
}
options := &msgraphsdk.TeamsAppsRequestBuilderPostRequestConfiguration{
	QueryParameters: requestParameters,
}
graphClient.AppCatalogs().TeamsApps().PostWithRequestConfigurationAndResponseHandler(options, nil)


```