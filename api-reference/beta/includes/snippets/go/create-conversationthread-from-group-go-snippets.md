---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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
emailAddress := graphmodels.NewEmailAddress()
name := "Alex Darrow"
emailAddress.SetName(&name) 
address := "alexd@contoso.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

newParticipants := []graphmodels.Recipientable {
	recipient,

}
post.SetNewParticipants(newParticipants)

posts := []graphmodels.Postable {
	post,

}
requestBody.SetPosts(posts)

result, err := graphClient.Groups().ByGroupId("group-id").Threads().Post(context.Background(), requestBody, nil)


```