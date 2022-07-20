---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.LanguagesRequestBuilderGetQueryParameters{
	Filter: "isEnabled eq true",
}
configuration := &graphconfig.LanguagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").Languages().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```