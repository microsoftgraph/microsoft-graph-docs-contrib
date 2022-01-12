---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ChannelRequestBuilderGetQueryParameters{
	Filter: "lastModifiedDateTime%20gt%202019-11-01T00:00:00Z%20and%20lastModifiedDateTime%20lt%202021-11-01T00:00:00Z",
}
options := &msgraphsdk.ChannelRequestBuilderGetOptions{
	Q: requestParameters,
}
teamId := "team-id"
channelId := "channel-id"
result, err := graphClient.TeamsById(&teamId).ChannelsById(&channelId).Get(options)


```