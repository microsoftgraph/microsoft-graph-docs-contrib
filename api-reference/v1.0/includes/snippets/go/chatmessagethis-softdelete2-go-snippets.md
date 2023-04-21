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



graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().ByMessageId("chatMessage-id").SoftDelete().Post(context.Background(), nil)


```