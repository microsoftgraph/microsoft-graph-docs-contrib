---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphplanner "github.com/microsoftgraph/msgraph-beta-sdk-go/planner"
	  //other-imports
)

requestBody := graphplanner.NewSetReactionPostRequestBody()
reactionType := "like"
requestBody.SetReactionType(&reactionType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Planner().Tasks().ByPlannerTaskId("plannerTask-id").Messages().ByPlannerTaskChatMessageId("plannerTaskChatMessage-id").SetReaction().Post(context.Background(), requestBody, nil)


```