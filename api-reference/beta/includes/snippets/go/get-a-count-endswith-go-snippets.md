---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}
requestParameters := &graphconfig.UsersRequestBuilderGetQueryParameters{
	Filter: "endswith(mail,'a@contoso.com')",
	Orderby: [] string {"userPrincipalName"},
	Count: true,
}
configuration := &graphconfig.UsersRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```