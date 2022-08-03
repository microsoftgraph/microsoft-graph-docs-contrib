---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReplyPostRequestBody()
post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
body.SetContentType(&contentType) 
content := "I attached a reference to a file on OneDrive."
body.SetContent(&content) 
post.SetBody(body)


attachment := graphmodels.NewAttachment()
"@odata.type" := "#microsoft.graph.referenceAttachment"
attachment.Set"@odata.type"(&"@odata.type") 
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

graphClient.GroupsById("group-id").ThreadsById("conversationThread-id").Reply().Post(requestBody)


```