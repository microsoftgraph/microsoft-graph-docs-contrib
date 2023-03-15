---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.ServicePrincipalItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","appRoles","oauth2PermissionScopes"},
}
configuration := &graphconfig.ServicePrincipalItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Get(context.Background(), configuration)


```