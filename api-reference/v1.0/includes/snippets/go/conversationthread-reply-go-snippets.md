---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReplyPostRequestBody()
post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
content := "content-value"
body.SetContent(&content) 
post.SetBody(body)
requestBody.SetPost(post)

graphClient.GroupsById("group-id").ThreadsById("conversationThread-id").Reply().Post(requestBody)


```