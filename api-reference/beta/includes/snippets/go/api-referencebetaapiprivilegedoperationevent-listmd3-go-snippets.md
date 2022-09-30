---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "(creationDateTime ge 2017-06-25T07:00:00Z) and "
requestCount := true

requestParameters := &graphconfig.PrivilegedOperationEventsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Count: &requestCount,
	Orderby: [] string {"creationDateTime desc"},
}
configuration := &graphconfig.PrivilegedOperationEventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.PrivilegedOperationEvents().Get(context.Background(), configuration)


```