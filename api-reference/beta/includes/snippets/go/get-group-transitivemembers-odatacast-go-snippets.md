---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestCount := true

requestParameters := &graphconfig.GroupItemTransitiveMembersMicrosoft.graph.groupRequestBuilderGetQueryParameters{
	Count: &requestCount,
}
configuration := &graphconfig.GroupItemTransitiveMembersMicrosoft.graph.groupRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").TransitiveMembers().Group().Get(context.Background(), configuration)


```