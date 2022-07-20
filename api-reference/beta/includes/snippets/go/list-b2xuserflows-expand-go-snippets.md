---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.B2xUserFlowsRequestBuilderGetQueryParameters{
	Expand: [] string {"identityProviders"},
}
configuration := &graphconfig.B2xUserFlowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().B2xUserFlows().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```