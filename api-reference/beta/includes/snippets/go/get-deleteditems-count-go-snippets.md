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

requestParameters := &graphconfig.GroupRequestBuilderGetQueryParameters{
	Count: &requestCount,
	OrderBy: [] string {"deletedDateTime asc"},
	Select: [] string {"id","displayName","deletedDateTime"},
}
configuration := &graphconfig.GroupRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().DeletedItems().Group().Get(context.Background(), configuration)


```