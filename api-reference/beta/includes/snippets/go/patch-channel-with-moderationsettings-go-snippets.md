---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewChannel()
displayName := "UpdateChannelModeration"
requestBody.SetDisplayName(&displayName)
description := "Update channel moderation."
requestBody.SetDescription(&description)
moderationSettings := msgraphsdk.NewChannelModerationSettings()
requestBody.SetModerationSettings(moderationSettings)
userNewMessageRestriction := "moderators"
moderationSettings.SetUserNewMessageRestriction(&userNewMessageRestriction)
replyRestriction := "everyone"
moderationSettings.SetReplyRestriction(&replyRestriction)
allowNewMessageFromBots := true
moderationSettings.SetAllowNewMessageFromBots(&allowNewMessageFromBots)
allowNewMessageFromConnectors := true
moderationSettings.SetAllowNewMessageFromConnectors(&allowNewMessageFromConnectors)
options := &msgraphsdk.ChannelRequestBuilderPatchOptions{
	Body: requestBody,
}
teamId := "team-id"
channelId := "channel-id"
graphClient.TeamsById(&teamId).ChannelsById(&channelId).Patch(options)


```