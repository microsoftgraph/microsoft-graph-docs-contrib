---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")

requestParameters := &graphconfig.MeRequestBuilderGetQueryParameters{
	Expand: [] string {"manager($levels=max;$select=id,displayName)"},
	Select: [] string {"id","displayName"},
}
configuration := &graphconfig.MeRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Get(context.Background(), configuration)


```