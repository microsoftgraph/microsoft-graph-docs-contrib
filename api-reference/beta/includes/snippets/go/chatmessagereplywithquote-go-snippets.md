---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-beta-sdk-go/chats"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphchats.NewReplyWithQuotePostRequestBody()
messageIds := []string {
	"1728088338580",
}
requestBody.SetMessageIds(messageIds)
replyMessage := graphmodels.NewChatMessage()
body := graphmodels.NewItemBody()
content := "Hello World"
body.SetContent(&content) 
replyMessage.SetBody(body)
requestBody.SetReplyMessage(replyMessage)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
replyWithQuote, err := graphClient.Chats().ByChatId("chat-id").Messages().ReplyWithQuote().Post(context.Background(), requestBody, nil)


```