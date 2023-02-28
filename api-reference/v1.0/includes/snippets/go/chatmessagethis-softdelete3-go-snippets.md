---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.TeamsById("team-id").ChannelsById("channel-id").MessagesById("chatMessage-id").RepliesById("chatMessage-id1").MicrosoftGraphSoftDelete().Post(context.Background(), nil)


```