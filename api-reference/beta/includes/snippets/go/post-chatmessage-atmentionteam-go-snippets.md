---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewChatMessage()
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
contentType := "html"
body.SetContentType(&contentType)
content := "<div><div><at id="0">GraphTesting</at>&nbsp;Hello team</div></div>"
body.SetContent(&content)
requestBody.SetMentions( []ChatMessageMention {
	msgraphsdk.NewChatMessageMention(),
id := int32(0)
	SetId(&id)
mentionText := "GraphTesting"
	SetMentionText(&mentionText)
mentioned := msgraphsdk.NewChatMessageMentionedIdentitySet()
	SetMentioned(mentioned)
conversation := msgraphsdk.NewTeamworkConversationIdentity()
	mentioned.SetConversation(conversation)
id := "68a3e365-f7d9-4a56-b499-24332a9cc572"
	conversation.SetId(&id)
displayName := "GraphTesting"
	conversation.SetDisplayName(&displayName)
conversationIdentityType := "team"
	conversation.SetConversationIdentityType(&conversationIdentityType)
}
requestBody.SetReactions( []ChatMessageReaction {
}
teamId := "team-id"
channelId := "channel-id"
result, err := graphClient.TeamsById(&teamId).ChannelsById(&channelId).Messages().Post(requestBody)


```