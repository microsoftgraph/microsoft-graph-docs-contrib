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


requestBody := graphmodels.NewChatMessage()
subject := null
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
body.SetContent(&content) 
requestBody.SetBody(body)


chatMessageAttachment := graphmodels.NewChatMessageAttachment()
id := "74d20c7f34aa4a7fb74e2b30004247c5"
chatMessageAttachment.SetId(&id) 
contentType := "application/vnd.microsoft.card.thumbnail"
chatMessageAttachment.SetContentType(&contentType) 
contentUrl := null
chatMessageAttachment.SetContentUrl(&contentUrl) 
content := "{\r\n  \"title\": \"This is an example of posting a card\",\r\n  \"subtitle\": \"<h3>This is the subtitle</h3>\",\r\n  \"text\": \"Here is some body text. <br>\r\nAnd a <a href=\\"http://microsoft.com/\\">hyperlink</a>. <br>\r\nAnd below that is some buttons:\",\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"Login to FakeBot\",\r\n      \"text\": \"login\",\r\n      \"displayText\": \"login\",\r\n      \"value\": \"login\"\r\n    }\r\n  ]\r\n}"
chatMessageAttachment.SetContent(&content) 
name := null
chatMessageAttachment.SetName(&name) 
thumbnailUrl := null
chatMessageAttachment.SetThumbnailUrl(&thumbnailUrl) 
teamsAppId := "881b8843-fd91-49e5-9ac2-47ec497ffbe5"
chatMessageAttachment.SetTeamsAppId(&teamsAppId) 

attachments := []graphmodels.ChatMessageAttachmentable {
	chatMessageAttachment,

}
requestBody.SetAttachments(attachments)

result, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().Post(context.Background(), requestBody, nil)


```