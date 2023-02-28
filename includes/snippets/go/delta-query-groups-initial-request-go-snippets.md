---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.GroupsMicrosoft.graph.delta()RequestBuilderGetQueryParameters{
	Select: [] string {"displayName","description","members"},
}
configuration := &graphconfig.GroupsMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().MicrosoftGraphDelta().Get(context.Background(), configuration)


```