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

requestBody := graphmodels.NewChannel()
displayName := "TestChannelModeration"
requestBody.SetDisplayName(&displayName) 
description := "Test channel moderation."
requestBody.SetDescription(&description) 
membershipType := graphmodels.STANDARD_CHANNELMEMBERSHIPTYPE 
requestBody.SetMembershipType(&membershipType) 
moderationSettings := graphmodels.NewChannelModerationSettings()
userNewMessageRestriction := graphmodels.EVERYONEEXCEPTGUESTS_USERNEWMESSAGERESTRICTION 
moderationSettings.SetUserNewMessageRestriction(&userNewMessageRestriction) 
replyRestriction := graphmodels.EVERYONE_REPLYRESTRICTION 
moderationSettings.SetReplyRestriction(&replyRestriction) 
allowNewMessageFromBots := true
moderationSettings.SetAllowNewMessageFromBots(&allowNewMessageFromBots) 
allowNewMessageFromConnectors := true
moderationSettings.SetAllowNewMessageFromConnectors(&allowNewMessageFromConnectors) 
requestBody.SetModerationSettings(moderationSettings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
channels, err := graphClient.Teams().ByTeamId("team-id").Channels().Post(context.Background(), requestBody, nil)


```