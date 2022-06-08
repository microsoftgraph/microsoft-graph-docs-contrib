---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.NamedLocationsRequestBuilderGetQueryParameters{
	Filter: "isof('microsoft.graph.ipNamedLocation')",
}
options := &msgraphsdk.NamedLocationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Identity().ConditionalAccess().NamedLocations().GetWithRequestConfigurationAndResponseHandler(options, nil)


```