---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ChannelsRequestBuilderGetQueryParameters{
	Filter: "membershipType eq 'private'",
}
configuration := &graphconfig.ChannelsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").Channels().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```