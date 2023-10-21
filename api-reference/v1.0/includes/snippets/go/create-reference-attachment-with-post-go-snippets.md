---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphgroups.NewReplyPostRequestBody()
post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
body.SetContentType(&contentType) 
content := "I attached a reference to a file on OneDrive."
body.SetContent(&content) 
post.SetBody(body)


attachment := graphmodels.NewReferenceAttachment()
name := "Personal pictures"
attachment.SetName(&name) 
additionalData := map[string]interface{}{
	"sourceUrl" : "https://contoso.com/personal/mario_contoso_net/Documents/Pics", 
	"providerType" : "oneDriveConsumer", 
	"permission" : "Edit", 
	"isFolder" : "True", 
}
attachment.SetAdditionalData(additionalData)

attachments := []graphmodels.Attachmentable {
	attachment,
}
post.SetAttachments(attachments)
requestBody.SetPost(post)

graphClient.Groups().ByGroupId("group-id").Threads().ByConversationThreadId("conversationThread-id").Reply().Post(context.Background(), requestBody, nil)


```