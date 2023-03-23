---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestSearch := "\"displayName:Team\""
requestCount := true

requestParameters := &graphconfig.ServicePrincipalsRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Count: &requestCount,
	Select: [] string {"accountEnabled","displayName","publisherName","servicePrincipalType","signInAudience"},
}
configuration := &graphconfig.ServicePrincipalsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.ServicePrincipals().Get(context.Background(), configuration)


```