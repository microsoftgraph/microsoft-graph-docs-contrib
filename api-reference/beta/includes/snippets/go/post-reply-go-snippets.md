---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphgroups.NewReplyPostRequestBody()
post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
body.SetContentType(&contentType) 
content := "content-value"
body.SetContent(&content) 
post.SetBody(body)
receivedDateTime , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
post.SetReceivedDateTime(&receivedDateTime) 
hasAttachments := true
post.SetHasAttachments(&hasAttachments) 
from := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
name := "name-value"
emailAddress.SetName(&name) 
address := "address-value"
emailAddress.SetAddress(&address) 
from.SetEmailAddress(emailAddress)
post.SetFrom(from)
sender := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
name := "name-value"
emailAddress.SetName(&name) 
address := "address-value"
emailAddress.SetAddress(&address) 
sender.SetEmailAddress(emailAddress)
post.SetSender(sender)
conversationThreadId := "conversationThreadId-value"
post.SetConversationThreadId(&conversationThreadId) 


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
name := "name-value"
emailAddress.SetName(&name) 
address := "address-value"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

newParticipants := []graphmodels.Recipientable {
	recipient,
}
post.SetNewParticipants(newParticipants)
conversationId := "conversationId-value"
post.SetConversationId(&conversationId) 
createdDateTime , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
post.SetCreatedDateTime(&createdDateTime) 
lastModifiedDateTime , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
post.SetLastModifiedDateTime(&lastModifiedDateTime) 
changeKey := "changeKey-value"
post.SetChangeKey(&changeKey) 
categories := []string {
	"categories-value",
}
post.SetCategories(categories)
id := "id-value"
post.SetId(&id) 
inReplyTo := graphmodels.NewPost()
post.SetInReplyTo(inReplyTo)


attachment := graphmodels.NewFileAttachment()
lastModifiedDateTime , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
attachment.SetLastModifiedDateTime(&lastModifiedDateTime) 
name := "name-value"
attachment.SetName(&name) 
contentType := "contentType-value"
attachment.SetContentType(&contentType) 
size := int32(99)
attachment.SetSize(&size) 
isInline := true
attachment.SetIsInline(&isInline) 
id := "id-value"
attachment.SetId(&id) 

attachments := []graphmodels.Attachmentable {
	attachment,
}
post.SetAttachments(attachments)
requestBody.SetPost(post)

graphClient.Groups().ByGroupId("group-id").Threads().ByThreadId("conversationThread-id").Posts().ByPostId("post-id").Reply().Post(context.Background(), requestBody, nil)


```