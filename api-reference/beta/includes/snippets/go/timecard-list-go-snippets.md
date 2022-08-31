---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(2)
requestFilter := "state eq 'clockedOut'"

requestParameters := &graphconfig.TimeCardsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Filter: &requestFilter,
}
configuration := &graphconfig.TimeCardsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").Schedule().TimeCards().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```