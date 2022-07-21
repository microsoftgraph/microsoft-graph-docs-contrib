---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewConversation()
topic := "New head count"
requestBody.SetTopic(&topic) 


conversationThread := graphmodels.NewConversationThread()


post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "The confirmation will come by the end of the week."
body.SetContent(&content) 
post.SetBody(body)


recipient := graphmodels.NewRecipient()
additionalData := map[string]interface{}{
emailAddress := graphmodels.New()
name := "Adele Vance"
emailAddress.SetName(&name) 
address := "AdeleV@contoso.onmicrosoft.com"
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
conversationThread.SetPosts(posts)

threads := []graphmodels.ConversationThreadable {
	conversationThread,

}
requestBody.SetThreads(threads)

result, err := graphClient.GroupsById("group-id").Conversations().Post(requestBody)


```