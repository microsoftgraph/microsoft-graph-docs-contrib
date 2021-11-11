---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewChatMessage()
requestBody.SetSubject(nil)
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
contentType := "html"
body.SetContentType(&contentType)
content := "<attachment id="74d20c7f34aa4a7fb74e2b30004247c5"></attachment>"
body.SetContent(&content)
requestBody.SetAttachments( []ChatMessageAttachment {
	msgraphsdk.NewChatMessageAttachment(),
	SetAdditionalData(map[string]interface{}{
		"id": "74d20c7f34aa4a7fb74e2b30004247c5",
		"contentType": "application/vnd.microsoft.card.thumbnail",
		"contentUrl": nil,
		"content": "{
  "title": "This is an example of posting a card",
  "subtitle": "<h3>This is the subtitle</h3>",
  "text": "Here is some body text. <br>\r\nAnd a <a href=\"http://microsoft.com/\">hyperlink</a>. <br>\r\nAnd below that is some buttons:",
  "buttons": [
    {
      "type": "messageBack",
      "title": "Login to FakeBot",
      "text": "login",
      "displayText": "login",
      "value": "login"
    }
  ]
}",
		"name": nil,
		"thumbnailUrl": nil,
	}
}
options := &msgraphsdk.MessagesRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
channelId := "channel-id"
result, err := graphClient.TeamsById(&teamId).ChannelsById(&channelId).Messages().Post(options)


```