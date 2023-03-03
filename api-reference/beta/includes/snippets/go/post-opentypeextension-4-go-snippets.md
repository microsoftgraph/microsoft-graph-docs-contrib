---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReplyPostRequestBody()
post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>"
body.SetContent(&content) 
post.SetBody(body)


extension := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"extensionName" : "Com.Contoso.HR", 
	"companyName" : "Contoso", 
	"expirationDate" : "2015-07-03T13:04:00.000Z", 
	topPicks := []string {
		"Employees only",
		"Add spouse or guest",
		"Add family",

	}
}
extension.SetAdditionalData(additionalData)

extensions := []graphmodels.Extensionable {
	extension,

}
post.SetExtensions(extensions)
requestBody.SetPost(post)

graphClient.GroupsById("group-id").ThreadsById("conversationThread-id").PostsById("post-id").Reply().Post(context.Background(), requestBody, nil)


```