---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "createdDateTime ge 2019-09-01T00:00:00Z"

requestParameters := &graphconfig.NamedLocationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.NamedLocationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().NamedLocations().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```