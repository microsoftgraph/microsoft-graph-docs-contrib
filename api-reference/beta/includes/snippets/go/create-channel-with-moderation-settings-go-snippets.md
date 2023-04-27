---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.Teams().ByTeamId("team-id").Channels().Post(context.Background(), requestBody, nil)


```