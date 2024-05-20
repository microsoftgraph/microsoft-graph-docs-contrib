---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewConversationMember()
roles := []string {
	"owner",
}
requestBody.SetRoles(roles)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
members, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Members().ByConversationMemberId("conversationMember-id").Patch(context.Background(), requestBody, nil)


```