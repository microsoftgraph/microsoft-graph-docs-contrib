---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer {Token}")


requestFilter := "startswith(displayName,%20'salesforce')"

requestParameters := &graphconfig.ServicePrincipalsRequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName"},
	Filter: &requestFilter,
}
configuration := &graphconfig.ServicePrincipalsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.ServicePrincipals().Get(context.Background(), configuration)


```