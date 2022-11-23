---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "microsoft.graph.countryNamedLocation/countriesAndRegions/any"

requestParameters := &graphconfig.NamedLocationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.NamedLocationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().NamedLocations().Get(context.Background(), configuration)


```