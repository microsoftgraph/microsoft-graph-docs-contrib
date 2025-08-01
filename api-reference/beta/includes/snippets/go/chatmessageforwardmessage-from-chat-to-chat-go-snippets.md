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

requestBody := graphchats.NewForwardToChatPostRequestBody()
targetChatIds := []string {
	"19:e2ed97baac8e4bffbb91299a38996790@thread.v2",
}
requestBody.SetTargetChatIds(targetChatIds)
messageIds := []string {
	"1728088338580",
}
requestBody.SetMessageIds(messageIds)
additionalMessage := graphmodels.NewChatMessage()
body := graphmodels.NewItemBody()
content := "Hello World"
body.SetContent(&content) 
additionalMessage.SetBody(body)
requestBody.SetAdditionalMessage(additionalMessage)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
forwardToChat, err := graphClient.Chats().ByChatId("chat-id").Messages().ForwardToChat().PostAsForwardToChatPostResponse(context.Background(), requestBody, nil)


```