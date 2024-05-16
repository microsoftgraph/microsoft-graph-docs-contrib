---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().Messages().ByMessageId("message-id").ReplyAll().Post(context.Background(), requestBody, nil)


```