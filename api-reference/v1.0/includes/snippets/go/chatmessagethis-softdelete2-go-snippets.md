---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.TeamsById("team-id").ChannelsById("channel-id").MessagesById("chatMessage-id").SoftDelete().Post(context.Background(), nil)


```