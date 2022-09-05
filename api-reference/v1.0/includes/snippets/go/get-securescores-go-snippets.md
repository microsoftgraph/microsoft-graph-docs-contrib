---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(1)

requestParameters := &graphconfig.SecureScoresRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.SecureScoresRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().SecureScores().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```