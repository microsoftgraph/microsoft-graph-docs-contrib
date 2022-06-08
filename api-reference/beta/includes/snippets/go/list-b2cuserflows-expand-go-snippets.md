---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.B2cUserFlowsRequestBuilderGetQueryParameters{
	Expand: "identityProviders",
}
options := &msgraphsdk.B2cUserFlowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Identity().B2cUserFlows().GetWithRequestConfigurationAndResponseHandler(options, nil)


```