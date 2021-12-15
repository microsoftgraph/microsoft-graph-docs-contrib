---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.TimeCardsRequestBuilderGetQueryParameters{
	Top: 2,
	Filter: "state%20eq%20'clockedOut'",
}
options := &msgraphsdk.TimeCardsRequestBuilderGetOptions{
	Q: requestParameters,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Schedule().TimeCards().Get(options)


```