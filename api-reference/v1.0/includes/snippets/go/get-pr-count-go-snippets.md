---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestCount := true
requestSearch := "\"displayName:Pr\""

requestParameters := &graphconfig.GroupItemMembersMicrosoft.graph.userRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Orderby: [] string {"displayName"},
	Search: &requestSearch,
	Select: [] string {"displayName","id"},
}
configuration := &graphconfig.GroupItemMembersMicrosoft.graph.userRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").Members().MicrosoftGraphUser().Get(context.Background(), configuration)


```