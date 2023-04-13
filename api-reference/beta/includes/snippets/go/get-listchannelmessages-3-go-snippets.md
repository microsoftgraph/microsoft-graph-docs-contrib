---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(1)

requestParameters := &graphconfig.TeamItemChannelItemMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Expand: [] string {"replies"},
}
configuration := &graphconfig.TeamItemChannelItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").ChannelsById("channel-id").Messages().Get(context.Background(), configuration)


```