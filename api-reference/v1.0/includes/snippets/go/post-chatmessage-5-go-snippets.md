---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewChatMessage()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "Testing with file share link. <attachment id=\"668f7fa8-8129-4de7-b32b-fe1b442e6ef1\"></attachment>"
body.SetContent(&content) 
requestBody.SetBody(body)


chatMessageAttachment := graphmodels.NewChatMessageAttachment()
id := "668f7fa8-8129-4de7-b32b-fe1b442e6ef1"
chatMessageAttachment.SetId(&id) 
contentType := "reference"
chatMessageAttachment.SetContentType(&contentType) 
contentUrl := "https://teamsgraph-my.sharepoint.com/:w:/g/personal/test_teamsgraph_onmicrosoft_com/Eah_j2YpgedNsyv-G0QubvEBma6Sd_76UtYkXwoJ-nYVEg?e=0H2Ibm"
chatMessageAttachment.SetContentUrl(&contentUrl) 

attachments := []graphmodels.ChatMessageAttachmentable {
	chatMessageAttachment,
}
requestBody.SetAttachments(attachments)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().Post(context.Background(), requestBody, nil)


```