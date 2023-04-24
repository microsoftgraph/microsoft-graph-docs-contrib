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
topic := "Take your wellness days and rest"
requestBody.SetTopic(&topic) 


conversationThread := graphmodels.NewConversationThread()


post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "Contoso cares about you: Rest and Recharge"
body.SetContent(&content) 
post.SetBody(body)


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
name := "Adele Vance"
emailAddress.SetName(&name) 
address := "AdeleV@contoso.onmicrosoft.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

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

result, err := graphClient.Groups().ByGroupId("group-id").Conversations().Post(context.Background(), requestBody, nil)


```