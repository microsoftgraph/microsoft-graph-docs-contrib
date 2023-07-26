---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemReplyAllPostRequestBody()
message := graphmodels.NewMessage()


attachment := graphmodels.NewFileAttachment()
name := "guidelines.txt"
attachment.SetName(&name) 
contentBytes := []byte("bWFjIGFuZCBjaGVlc2UgdG9kYXk=")
attachment.SetContentBytes(&contentBytes) 

attachments := []graphmodels.Attachmentable {
	attachment,
}
message.SetAttachments(attachments)
requestBody.SetMessage(message)
comment := "Please take a look at the attached guidelines before you decide on the name."
requestBody.SetComment(&comment) 

graphClient.Me().Messages().ByMessageId("message-id").ReplyAll().Post(context.Background(), requestBody, nil)


```