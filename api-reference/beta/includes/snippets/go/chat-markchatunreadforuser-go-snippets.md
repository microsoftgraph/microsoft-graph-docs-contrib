---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-beta-sdk-go/chats"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphchats.NewMarkChatUnreadForUserPostRequestBody()
user := graphmodels.NewTeamworkUserIdentity()
id := "d864e79f-a516-4d0f-9fee-0eeb4d61fdc2"
user.SetId(&id) 
additionalData := map[string]interface{}{
	"tenantId" : "2a690434-97d9-4eed-83a6-f5f13600199a", 
}
user.SetAdditionalData(additionalData)
requestBody.SetUser(user)
lastMessageReadDateTime , err := time.Parse(time.RFC3339, "2021-05-27T22:13:01.577Z")
requestBody.SetLastMessageReadDateTime(&lastMessageReadDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Chats().ByChatId("chat-id").MarkChatUnreadForUser().Post(context.Background(), requestBody, nil)


```