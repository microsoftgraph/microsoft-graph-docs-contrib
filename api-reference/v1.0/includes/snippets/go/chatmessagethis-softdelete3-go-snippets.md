---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.TeamsById("team-id").ChannelsById("channel-id").MessagesById("chatMessage-id").RepliesById("chatMessage-id1").SoftDelete().Post(context.Background(), nil)


```