---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}

requestCount := true
requestFilter := "startswith(displayName,%20'A')"

requestParameters := &graphconfig.GroupRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Orderby: [] string {"displayName"},
	Filter: &requestFilter,
}
configuration := &graphconfig.GroupRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").MemberOf().Group().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```