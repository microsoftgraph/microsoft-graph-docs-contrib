---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "isof('microsoft.graph.ipNamedLocation')"

requestParameters := &graphconfig.IdentityConditionalAccessNamedLocationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityConditionalAccessNamedLocationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().NamedLocations().Get(context.Background(), configuration)


```