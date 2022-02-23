---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
attachmentItem := msgraphsdk.NewAttachmentItem()
requestBody.SetAttachmentItem(attachmentItem)
attachmentType := "file"
attachmentItem.SetAttachmentType(&attachmentType)
name := "scenary"
attachmentItem.SetName(&name)
size := int64(7208534)
attachmentItem.SetSize(&size)
isInline := true
attachmentItem.SetIsInline(&isInline)
contentId := "my_inline_picture"
attachmentItem.SetContentId(&contentId)
options := &msgraphsdk.CreateUploadSessionRequestBuilderPostOptions{
	Body: requestBody,
}
messageId := "message-id"
result, err := graphClient.Me().MessagesById(&messageId).Attachments().CreateUploadSession().Post(options)


```