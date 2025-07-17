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
subject := "Announcement Subheading"
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
body.SetContentType(&contentType) 
content := "<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text"
body.SetContent(&content) 
requestBody.SetBody(body)


chatMessageAttachment := graphmodels.NewChatMessageAttachment()
id := "d7ddbf876ae340c3a03bada395ec7da7"
chatMessageAttachment.SetId(&id) 
contentType := "application/vnd.microsoft.teams.messaging-announcementBanner"
chatMessageAttachment.SetContentType(&contentType) 
contentUrl := null
chatMessageAttachment.SetContentUrl(&contentUrl) 
content := "{\"title\":\"\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/2/$value\",\"imageContentType\":\"image/jpg\"},\"croppedImage\":{\"source\":\"../hostedContents/1/$value\"}}}}"
chatMessageAttachment.SetContent(&content) 
name := null
chatMessageAttachment.SetName(&name) 
thumbnailUrl := null
chatMessageAttachment.SetThumbnailUrl(&thumbnailUrl) 

attachments := []graphmodels.ChatMessageAttachmentable {
	chatMessageAttachment,
}
requestBody.SetAttachments(attachments)


chatMessageHostedContent := graphmodels.NewChatMessageHostedContent()
contentBytes := []byte("iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4c6QAAAARnQU1BA")
chatMessageHostedContent.SetContentBytes(&contentBytes) 
contentType := "image/png"
chatMessageHostedContent.SetContentType(&contentType) 
additionalData := map[string]interface{}{
	"@microsoft.graph.temporaryId" : "1", 
}
chatMessageHostedContent.SetAdditionalData(additionalData)
chatMessageHostedContent1 := graphmodels.NewChatMessageHostedContent()
contentBytes := []byte("iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4c6QAAIABJREFUe")
chatMessageHostedContent1.SetContentBytes(&contentBytes) 
contentType := "image/png"
chatMessageHostedContent1.SetContentType(&contentType) 
additionalData := map[string]interface{}{
	"@microsoft.graph.temporaryId" : "2", 
}
chatMessageHostedContent1.SetAdditionalData(additionalData)

hostedContents := []graphmodels.ChatMessageHostedContentable {
	chatMessageHostedContent,
	chatMessageHostedContent1,
}
requestBody.SetHostedContents(hostedContents)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().Post(context.Background(), requestBody, nil)


```