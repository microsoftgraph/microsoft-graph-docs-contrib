---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewChatMessage()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
body.SetContent(&content) 
requestBody.SetBody(body)


chatMessageAttachment := graphmodels.NewChatMessageAttachment()
id := "74d20c7f34aa4a7fb74e2b30004247c5"
chatMessageAttachment.SetId(&id) 
contentType := "application/vnd.microsoft.card.fluidEmbedCard"
chatMessageAttachment.SetContentType(&contentType) 
content := "{\"componentUrl\": \"{LoopComponent_url}\", \"sourceType\": \"Compose\"}"
chatMessageAttachment.SetContent(&content) 
name := null
chatMessageAttachment.SetName(&name) 
thumbnailUrl := null
chatMessageAttachment.SetThumbnailUrl(&thumbnailUrl) 
teamsAppId := "FluidEmbedCard"
chatMessageAttachment.SetTeamsAppId(&teamsAppId) 

attachments := []graphmodels.ChatMessageAttachmentable {
	chatMessageAttachment,
}
requestBody.SetAttachments(attachments)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Chats().ByChatId("chat-id").Messages().Post(context.Background(), requestBody, nil)


```