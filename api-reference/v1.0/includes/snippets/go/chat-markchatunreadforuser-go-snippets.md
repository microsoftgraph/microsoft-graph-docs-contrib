---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-sdk-go/chats"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

graphClient.Chats().ByChatId("chat-id").MarkChatUnreadForUser().Post(context.Background(), requestBody, nil)


```