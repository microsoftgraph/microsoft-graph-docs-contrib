---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
post := msgraphsdk.NewPost()
requestBody.SetPost(post)
body := msgraphsdk.NewItemBody()
post.SetBody(body)
contentType := "html"
body.SetContentType(&contentType)
content := "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>"
body.SetContent(&content)
post.SetExtensions( []Extension {
	msgraphsdk.NewExtension(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "microsoft.graph.openTypeExtension",
		"extensionName": "Com.Contoso.HR",
		"companyName": "Contoso",
		"expirationDate": "2015-07-03T13:04:00.000Z",
		"topPicks":  []String {
			"Employees only",
			"Add spouse or guest",
			"Add family",
		}
	}
}
options := &msgraphsdk.ReplyRequestBuilderPostOptions{
	Body: requestBody,
}
groupId := "group-id"
conversationThreadId := "conversationThread-id"
postId := "post-id"
graphClient.GroupsById(&groupId).ThreadsById(&conversationThreadId).PostsById(&postId).Reply().Post(options)


```