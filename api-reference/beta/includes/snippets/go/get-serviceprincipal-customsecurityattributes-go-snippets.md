---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ServicePrincipalRequestBuilderGetQueryParameters{
	Select: "customSecurityAttributes",
}
options := &msgraphsdk.ServicePrincipalRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
servicePrincipalId := "servicePrincipal-id"
result, err := graphClient.ServicePrincipalsById(&servicePrincipalId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```