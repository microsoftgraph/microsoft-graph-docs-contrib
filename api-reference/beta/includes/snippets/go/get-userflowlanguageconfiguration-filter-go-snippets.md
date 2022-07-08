---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.LanguagesRequestBuilderGetQueryParameters{
	Filter: "isEnabled%20eq%20true",
}
options := &msgraphsdk.LanguagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
b2cIdentityUserFlowId := "b2cIdentityUserFlow-id"
result, err := graphClient.Identity().B2cUserFlowsById(&b2cIdentityUserFlowId).Languages().GetWithRequestConfigurationAndResponseHandler(options, nil)


```