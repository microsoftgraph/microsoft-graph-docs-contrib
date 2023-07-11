---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
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
sourceUrl := "https://contoso.com/personal/mario_contoso_net/Documents/Pics"
attachment.SetSourceUrl(&sourceUrl) 
providerType := graphmodels.ONEDRIVECONSUMER_REFERENCEATTACHMENTPROVIDER 
attachment.SetProviderType(&providerType) 
permission := graphmodels.EDIT_REFERENCEATTACHMENTPERMISSION 
attachment.SetPermission(&permission) 
isFolder := true
attachment.SetIsFolder(&isFolder) 

attachments := []graphmodels.Attachmentable {
	attachment,
}
post.SetAttachments(attachments)
requestBody.SetPost(post)

graphClient.Groups().ByGroupId("group-id").Threads().ByThreadId("conversationThread-id").Reply().Post(context.Background(), requestBody, nil)


```