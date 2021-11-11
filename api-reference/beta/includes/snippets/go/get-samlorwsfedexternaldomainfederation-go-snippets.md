---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.IdentityProviderBaseRequestBuilderGetQueryParameters{
	Filter: "domains/any(x:%20x/id%20eq%20'contoso.com')",
}
options := &msgraphsdk.IdentityProviderBaseRequestBuilderGetOptions{
	Q: requestParameters,
}
identityProviderBaseId := "identityProviderBase-id"
result, err := graphClient.Directory().FederationConfigurationsById(&identityProviderBaseId).Get(options)


```