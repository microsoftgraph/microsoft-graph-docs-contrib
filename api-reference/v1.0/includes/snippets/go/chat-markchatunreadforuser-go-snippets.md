---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Chats/Item/MarkChatUnreadForUser"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMarkChatUnreadForUserPostRequestBody()
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