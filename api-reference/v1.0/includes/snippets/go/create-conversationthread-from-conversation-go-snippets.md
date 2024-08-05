---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
threads, err := graphClient.Groups().ByGroupId("group-id").Conversations().ByConversationId("conversation-id").Threads().Post(context.Background(), requestBody, nil)


```