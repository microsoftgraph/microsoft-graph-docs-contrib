---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.NamedLocationsRequestBuilderGetQueryParameters{
	Filter: "isof('microsoft.graph.ipNamedLocation')",
}
options := &msgraphsdk.NamedLocationsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Identity().ConditionalAccess().NamedLocations().Get(options)


```