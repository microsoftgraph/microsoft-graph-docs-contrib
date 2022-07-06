---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ChannelsRequestBuilderGetQueryParameters{
	Filter: "membershipType%20eq%20'shared'",
}
options := &msgraphsdk.ChannelsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Channels().GetWithRequestConfigurationAndResponseHandler(options, nil)


```