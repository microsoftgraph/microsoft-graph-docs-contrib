---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "displayName eq 'Microsoft Graph'"

requestParameters := &graphconfig.ServicePrincipalsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","displayName","appId","oauth2PermissionScopes"},
}
configuration := &graphconfig.ServicePrincipalsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ServicePrincipals().Get(context.Background(), configuration)


```