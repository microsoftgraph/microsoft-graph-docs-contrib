---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Groups().ByGroupId("group-id").Threads().ByConversationThreadId("conversationThread-id").Posts().ByPostId("post-id").Reply().Post(context.Background(), requestBody, nil)


```