---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "displayName eq 'Microsoft Graph'"

requestParameters := &graphconfig.ServicePrincipalsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","displayName","appId","appRoles"},
}
configuration := &graphconfig.ServicePrincipalsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ServicePrincipals().Get(context.Background(), configuration)


```