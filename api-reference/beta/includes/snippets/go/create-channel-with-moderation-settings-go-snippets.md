---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewChannel()
displayName := "TestChannelModeration"
requestBody.SetDisplayName(&displayName)
description := "Test channel moderation."
requestBody.SetDescription(&description)
membershipType := "standard"
requestBody.SetMembershipType(&membershipType)
moderationSettings := msgraphsdk.NewChannelModerationSettings()
requestBody.SetModerationSettings(moderationSettings)
userNewMessageRestriction := "everyoneExceptGuests"
moderationSettings.SetUserNewMessageRestriction(&userNewMessageRestriction)
replyRestriction := "everyone"
moderationSettings.SetReplyRestriction(&replyRestriction)
allowNewMessageFromBots := true
moderationSettings.SetAllowNewMessageFromBots(&allowNewMessageFromBots)
allowNewMessageFromConnectors := true
moderationSettings.SetAllowNewMessageFromConnectors(&allowNewMessageFromConnectors)
options := &msgraphsdk.ChannelsRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Channels().Post(options)


```