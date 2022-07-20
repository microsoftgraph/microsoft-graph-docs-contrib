---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.IdentityProviderBaseRequestBuilderGetQueryParameters{
	Filter: "domains/any",
}
configuration := &graphconfig.IdentityProviderBaseRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().FederationConfigurationsById("identityProviderBase-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```