---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Groups/Item/Threads/Item/Reply"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewReplyPostRequestBody()
post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
content := "content-value"
body.SetContent(&content) 
post.SetBody(body)
requestBody.SetPost(post)

graphClient.GroupsById("group-id").ThreadsById("conversationThread-id").Reply().Post(context.Background(), requestBody, nil)


```