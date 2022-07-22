---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChatMessage()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "<div><div><at id=\"0\">TestTag</at>&nbsp;Testing Tags</div></div>"
body.SetContent(&content) 
requestBody.SetBody(body)


chatMessageMention := graphmodels.NewChatMessageMention()
id := int32(0)
chatMessageMention.SetId(&id) 
mentionText := "TestTag"
chatMessageMention.SetMentionText(&mentionText) 
mentioned := graphmodels.Newmentioned()
tag := graphmodels.Newtag()
id := "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM2OGEzZTM2NS1mN2Q5LTRhNTYtYjQ5OS0yNDMzMmE5Y2M1NzIjI3RTMERJZ1Z1ZQ=="
tag.SetId(&id) 
displayName := "TestTag"
tag.SetDisplayName(&displayName) 
mentioned.SetTag(tag)
chatMessageMention.SetMentioned(mentioned)

mentions := []graphmodels.ChatMessageMentionable {
	chatMessageMention,

}
requestBody.SetMentions(mentions)

result, err := graphClient.TeamsById("team-id").ChannelsById("channel-id").Messages().Post(requestBody)


```