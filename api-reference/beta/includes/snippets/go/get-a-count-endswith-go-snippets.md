---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestFilter := "endswith(mail,'a@contoso.com')"
requestCount := true

requestParameters := &graphconfig.UsersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Orderby: [] string {"userPrincipalName"},
	Count: &requestCount,
}
configuration := &graphconfig.UsersRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().Get(context.Background(), configuration)


```