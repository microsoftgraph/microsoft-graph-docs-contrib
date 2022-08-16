---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.NamedLocationsRequestBuilderGetQueryParameters{
	Filter: "microsoft.graph.countryNamedLocation/countriesAndRegions/any",
}
configuration := &graphconfig.NamedLocationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().NamedLocations().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```