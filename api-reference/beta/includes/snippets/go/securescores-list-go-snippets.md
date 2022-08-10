---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.SecureScoresRequestBuilderGetQueryParameters{
	Top: 1,
}
configuration := &graphconfig.SecureScoresRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().SecureScores().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```