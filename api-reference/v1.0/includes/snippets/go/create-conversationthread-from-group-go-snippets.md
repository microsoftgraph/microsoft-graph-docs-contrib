---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewConversationThread()
topic := "New Conversation Thread Topic"
requestBody.SetTopic(&topic) 


post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "this is body content"
body.SetContent(&content) 
post.SetBody(body)


recipient := graphmodels.NewRecipient()
additionalData := map[string]interface{}{
emailAddress := graphmodels.New()
name := "Alex Darrow"
emailAddress.SetName(&name) 
address := "alexd@contoso.com"
emailAddress.SetAddress(&address) 
	recipient.SetEmailAddress(emailAddress)
}
recipient.SetAdditionalData(additionalData)

newParticipants := []graphmodels.Recipientable {
	recipient,

}
post.SetNewParticipants(newParticipants)

posts := []graphmodels.Postable {
	post,

}
requestBody.SetPosts(posts)

result, err := graphClient.GroupsById("group-id").Threads().Post(requestBody)


```