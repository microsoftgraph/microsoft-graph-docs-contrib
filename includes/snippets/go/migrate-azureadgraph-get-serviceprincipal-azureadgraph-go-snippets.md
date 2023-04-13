---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "appId eq '00000002-0000-0000-c000-000000000000'"

requestParameters := &graphconfig.ServicePrincipalsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.ServicePrincipalsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ServicePrincipals().Get(context.Background(), configuration)


```