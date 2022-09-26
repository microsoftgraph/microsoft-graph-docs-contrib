---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChannel()
displayName := "UpdateChannelModeration"
requestBody.SetDisplayName(&displayName) 
description := "Update channel moderation."
requestBody.SetDescription(&description) 
moderationSettings := graphmodels.NewChannelModerationSettings()
userNewMessageRestriction := graphmodels.MODERATORS_USERNEWMESSAGERESTRICTION 
moderationSettings.SetUserNewMessageRestriction(&userNewMessageRestriction) 
replyRestriction := graphmodels.EVERYONE_REPLYRESTRICTION 
moderationSettings.SetReplyRestriction(&replyRestriction) 
allowNewMessageFromBots := true
moderationSettings.SetAllowNewMessageFromBots(&allowNewMessageFromBots) 
allowNewMessageFromConnectors := true
moderationSettings.SetAllowNewMessageFromConnectors(&allowNewMessageFromConnectors) 
requestBody.SetModerationSettings(moderationSettings)

graphClient.TeamsById("team-id").ChannelsById("channel-id").Patch(context.Background(), requestBody, nil)


```