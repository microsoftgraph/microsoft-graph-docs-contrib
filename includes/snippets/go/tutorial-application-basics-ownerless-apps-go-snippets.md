---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}

requestFilter := "owners/$count eq 0"
requestCount := true

requestParameters := &graphconfig.ApplicationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Count: &requestCount,
}
configuration := &graphconfig.ApplicationsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Applications().Get(context.Background(), configuration)


```