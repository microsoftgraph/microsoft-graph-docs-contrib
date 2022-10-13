---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ServicePrincipalRequestBuilderGetQueryParameters{
	Select: [] string {"customSecurityAttributes"},
}
configuration := &graphconfig.ServicePrincipalRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Get(context.Background(), configuration)


```