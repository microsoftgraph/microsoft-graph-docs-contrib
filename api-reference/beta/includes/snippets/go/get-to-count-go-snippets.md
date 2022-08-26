---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}

requestSearch := "\"displayName:wa\" OR \"displayName:ad\""
requestCount := true

requestParameters := &graphconfig.UsersRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Orderby: [] string {"displayName"},
	Count: &requestCount,
}
configuration := &graphconfig.UsersRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```