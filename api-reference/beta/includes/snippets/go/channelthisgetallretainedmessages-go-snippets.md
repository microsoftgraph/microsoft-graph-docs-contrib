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



getAllRetainedMessages, err := graphClient.Teams().ByTeamId("team-id").Channels().GetAllRetainedMessages().GetAsGetAllRetainedMessagesGetResponse(context.Background(), nil)


```