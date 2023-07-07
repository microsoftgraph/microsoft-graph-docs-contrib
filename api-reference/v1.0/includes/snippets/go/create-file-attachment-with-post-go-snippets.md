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
content := "Which quarter does that file cover? See my attachment."
body.SetContent(&content) 
post.SetBody(body)


attachment := graphmodels.NewFileAttachment()
name := "Another file as attachment"
attachment.SetName(&name) 
contentBytes := []byte("vGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu")
attachment.SetContentBytes(&contentBytes) 

attachments := []graphmodels.Attachmentable {
	attachment,
}
post.SetAttachments(attachments)
requestBody.SetPost(post)

graphClient.Groups().ByGroupId("group-id").Threads().ByThreadId("conversationThread-id").Reply().Post(context.Background(), requestBody, nil)


```