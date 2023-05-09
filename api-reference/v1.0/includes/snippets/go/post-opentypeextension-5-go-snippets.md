---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConversation()
topic := "Does anyone have a second?"
requestBody.SetTopic(&topic) 


conversationThread := graphmodels.NewConversationThread()


post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "This is urgent!"
body.SetContent(&content) 
post.SetBody(body)


extension := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"extensionName" : "Com.Contoso.Benefits", 
	"companyName" : "Contoso", 
	"expirationDate" : "2016-08-03T11:00:00.000Z", 
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

posts := []graphmodels.Postable {
	post,

}
conversationThread.SetPosts(posts)

threads := []graphmodels.ConversationThreadable {
	conversationThread,

}
requestBody.SetThreads(threads)

result, err := graphClient.Groups().ByGroupId("group-id").Conversations().Post(context.Background(), requestBody, nil)


```