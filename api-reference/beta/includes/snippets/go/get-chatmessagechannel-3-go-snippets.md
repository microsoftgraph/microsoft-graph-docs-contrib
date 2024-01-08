---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



replies, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().ByChatMessageId("chatMessage-id").Replies().ByChatMessageId1("chatMessage-id1").Get(context.Background(), nil)


```