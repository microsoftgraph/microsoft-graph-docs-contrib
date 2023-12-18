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
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>"
body.SetContent(&content) 
post.SetBody(body)


extension := graphmodels.NewOpenTypeExtension()
extensionName := "Com.Contoso.HR"
extension.SetExtensionName(&extensionName) 
additionalData := map[string]interface{}{
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

graphClient.Groups().ByGroupId("group-id").Threads().ByConversationThreadId("conversationThread-id").Posts().ByPostId("post-id").Reply().Post(context.Background(), requestBody, nil)


```