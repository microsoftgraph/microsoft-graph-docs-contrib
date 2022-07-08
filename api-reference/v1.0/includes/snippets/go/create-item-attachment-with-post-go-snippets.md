---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPostRequestBody()
post := msgraphsdk.NewPost()
requestBody.SetPost(post)
body := msgraphsdk.NewItemBody()
post.SetBody(body)
contentType := "text"
body.SetContentType(&contentType)
content := "I attached an event."
body.SetContent(&content)
post.SetAttachments( []Attachment {
	msgraphsdk.NewAttachment(),
name := "Holiday event"
	SetName(&name)
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.itemAttachment",
	}
}
groupId := "group-id"
conversationThreadId := "conversationThread-id"
graphClient.GroupsById(&groupId).ThreadsById(&conversationThreadId).Reply(group-id, conversationThread-id).Post(requestBody)


```