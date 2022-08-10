---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.DefinitionsRequestBuilderGetQueryParameters{
	Top: 100,
	Skip: 0,
}
configuration := &graphconfig.DefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```