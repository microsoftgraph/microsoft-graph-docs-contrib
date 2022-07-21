---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.TimeCardsRequestBuilderGetQueryParameters{
	Top: 2,
	Filter: "state eq 'clockedOut'",
}
configuration := &graphconfig.TimeCardsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").Schedule().TimeCards().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```