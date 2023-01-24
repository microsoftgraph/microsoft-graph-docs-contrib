---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestSearch := "\"displayName:Android\""
requestCount := true

requestParameters := &graphconfig.DevicesRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Count: &requestCount,
}
configuration := &graphconfig.DevicesRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Devices().Get(context.Background(), configuration)


```