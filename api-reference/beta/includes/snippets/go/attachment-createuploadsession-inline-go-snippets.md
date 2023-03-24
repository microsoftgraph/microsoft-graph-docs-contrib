---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewCreateUploadSessionPostRequestBody()
attachmentItem := graphmodels.NewAttachmentItem()
attachmentType := graphmodels.FILE_ATTACHMENTTYPE 
attachmentItem.SetAttachmentType(&attachmentType) 
name := "scenary"
attachmentItem.SetName(&name) 
size := int64(7208534)
attachmentItem.SetSize(&size) 
isInline := true
attachmentItem.SetIsInline(&isInline) 
contentId := "my_inline_picture"
attachmentItem.SetContentId(&contentId) 
requestBody.SetAttachmentItem(attachmentItem)

result, err := graphClient.Me().MessagesById("message-id").Attachments().CreateUploadSession().Post(context.Background(), requestBody, nil)


```