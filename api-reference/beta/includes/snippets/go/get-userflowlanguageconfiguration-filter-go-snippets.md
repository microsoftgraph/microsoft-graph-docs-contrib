---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "isEnabled eq true"

requestParameters := &graphconfig.LanguagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.LanguagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").Languages().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```