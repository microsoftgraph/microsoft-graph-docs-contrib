---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewChatMessage()
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
contentType := "html"
body.SetContentType(&contentType)
content := "<div><div><at id="0">GraphTesting</at>&nbsp;Hello team</div></div>"
body.SetContent(&content)
requestBody.SetMentions( []ChatMessageMention {
	msgraphsdk.NewChatMessageMention(),
	SetAdditionalData(map[string]interface{}{
		"id": ,
		"mentionText": "GraphTesting",
	}
}
requestBody.SetReactions( []ChatMessageReaction {
}
options := &msgraphsdk.MessagesRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
channelId := "channel-id"
result, err := graphClient.TeamsById(&teamId).ChannelsById(&channelId).Messages().Post(options)


```