---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}

requestFilter := "startswith(displayName,'A')"
requestCount := true
requestTop := int32(1)

requestParameters := &graphconfig.ContactsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Count: &requestCount,
	Top: &requestTop,
	Orderby: [] string {"displayName"},
}
configuration := &graphconfig.ContactsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Contacts().Get(context.Background(), configuration)


```