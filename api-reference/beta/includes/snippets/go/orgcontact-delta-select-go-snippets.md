---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ContactsMicrosoft.graph.delta()RequestBuilderGetQueryParameters{
	Select: [] string {"displayName","jobTitle","mail"},
}
configuration := &graphconfig.ContactsMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Contacts().Delta().Get(context.Background(), configuration)


```