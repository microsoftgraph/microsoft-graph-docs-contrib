---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}
requestParameters := &graphconfig.GroupRequestBuilderGetQueryParameters{
	Count: true,
	Orderby: [] string {"displayName"},
	Filter: "startswith(displayName,%20'A')",
}
configuration := &graphconfig.GroupRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").MemberOf().Group().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```