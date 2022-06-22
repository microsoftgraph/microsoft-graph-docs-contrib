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
content := "I attached a reference to a file on OneDrive."
body.SetContent(&content)
post.SetAttachments( []Attachment {
	msgraphsdk.NewAttachment(),
name := "Personal pictures"
	SetName(&name)
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.referenceAttachment",
		"sourceUrl": "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
		"providerType": "oneDriveConsumer",
		"permission": "Edit",
		"isFolder": "True",
	}
}
groupId := "group-id"
conversationThreadId := "conversationThread-id"
graphClient.GroupsById(&groupId).ThreadsById(&conversationThreadId).Reply(group-id, conversationThread-id).Post(requestBody)


```