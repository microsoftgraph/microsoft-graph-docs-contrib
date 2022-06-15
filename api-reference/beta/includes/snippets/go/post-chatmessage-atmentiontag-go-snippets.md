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
content := "<div><div><at id="0">TestTag</at>&nbsp;Testing Tags</div></div>"
body.SetContent(&content)
requestBody.SetMentions( []ChatMessageMention {
	msgraphsdk.NewChatMessageMention(),
id := int32(0)
	SetId(&id)
mentionText := "TestTag"
	SetMentionText(&mentionText)
mentioned := msgraphsdk.NewChatMessageMentionedIdentitySet()
	SetMentioned(mentioned)
tag := msgraphsdk.NewTeamworkTagIdentity()
	mentioned.SetTag(tag)
id := "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM2OGEzZTM2NS1mN2Q5LTRhNTYtYjQ5OS0yNDMzMmE5Y2M1NzIjI3RTMERJZ1Z1ZQ=="
	tag.SetId(&id)
displayName := "TestTag"
	tag.SetDisplayName(&displayName)
}
teamId := "team-id"
channelId := "channel-id"
result, err := graphClient.TeamsById(&teamId).ChannelsById(&channelId).Messages().Post(requestBody)


```