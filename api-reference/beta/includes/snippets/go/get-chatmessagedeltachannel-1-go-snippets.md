---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(2)

requestParameters := &graphconfig.TeamItemChannelItemMessageItemRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.TeamItemChannelItemMessageItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").ChannelsById("channel-id").MessagesById("chatMessage-id").Get(context.Background(), configuration)


```