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
content := "{\"title\":\"Announcement heading\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/1/$value\",\"width\":1379,\"height\":268,\"croppedWidth\":918.0,\"croppedHeight\":178.4075416968818,\"leftMargin\":0.0,\"topMargin\":90.7962291515591,\"imageContentType\":\"image/png\"},\"croppedImage\":{\"source\":\"../hostedContents/2/$value\"}}}}"
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
contentBytes := []byte("iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4")
chatMessageHostedContent.SetContentBytes(&contentBytes) 
contentType := "image/png"
chatMessageHostedContent.SetContentType(&contentType) 
additionalData := map[string]interface{}{
	"microsoftGraphTemporaryId" : "1", 
}
chatMessageHostedContent.SetAdditionalData(additionalData)
chatMessageHostedContent1 := graphmodels.NewChatMessageHostedContent()
contentBytes := []byte("iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4")
chatMessageHostedContent1.SetContentBytes(&contentBytes) 
contentType := "image/png"
chatMessageHostedContent1.SetContentType(&contentType) 
additionalData := map[string]interface{}{
	"microsoftGraphTemporaryId" : "2", 
}
chatMessageHostedContent1.SetAdditionalData(additionalData)

hostedContents := []graphmodels.ChatMessageHostedContentable {
	chatMessageHostedContent,
	chatMessageHostedContent1,

}
requestBody.SetHostedContents(hostedContents)

result, err := graphClient.TeamsById("team-id").ChannelsById("channel-id").Messages().Post(context.Background(), requestBody, nil)


```