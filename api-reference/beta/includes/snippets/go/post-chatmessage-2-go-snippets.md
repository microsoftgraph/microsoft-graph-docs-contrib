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
content := "Hello World <at id="0">Jane Smith</at>"
body.SetContent(&content)
requestBody.SetMentions( []ChatMessageMention {
	msgraphsdk.NewChatMessageMention(),
id := int32(0)
	SetId(&id)
mentionText := "Jane Smith"
	SetMentionText(&mentionText)
mentioned := msgraphsdk.NewChatMessageMentionedIdentitySet()
	SetMentioned(mentioned)
user := msgraphsdk.NewIdentity()
	mentioned.SetUser(user)
displayName := "Jane Smith"
	user.SetDisplayName(&displayName)
id := "ef1c916a-3135-4417-ba27-8eb7bd084193"
	user.SetId(&id)
	user.SetAdditionalData(map[string]interface{}{
		"userIdentityType": "aadUser",
	}
}
teamId := "team-id"
channelId := "channel-id"
result, err := graphClient.TeamsById(&teamId).ChannelsById(&channelId).Messages().Post(requestBody)


```