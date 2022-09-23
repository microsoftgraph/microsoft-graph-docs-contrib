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
requestFilter := "startswith(displayName,%20'a')"

requestParameters := &graphconfig.GroupRequestBuilderGetQueryParameters{
	Count: &requestCount,
	OrderBy: [] string {"displayName"},
	Filter: &requestFilter,
}
configuration := &graphconfig.GroupRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.DevicesById("device-id").TransitiveMemberOf().Group().Get(context.Background(), configuration)


```