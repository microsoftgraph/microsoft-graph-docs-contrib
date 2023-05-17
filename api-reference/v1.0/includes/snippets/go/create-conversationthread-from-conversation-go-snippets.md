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


requestBody := graphmodels.NewConversationThread()
topic := "Take your wellness days and rest"
requestBody.SetTopic(&topic) 


post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "Waiting for the summer holidays."
body.SetContent(&content) 
post.SetBody(body)

posts := []graphmodels.Postable {
	post,

}
requestBody.SetPosts(posts)

result, err := graphClient.Groups().ByGroupId("group-id").Conversations().ByConversationId("conversation-id").Threads().Post(context.Background(), requestBody, nil)


```